#!/usr/bin/opsi-python

import os
import sys
import shutil
import socket

from OPSI.Backend.BackendManager import BackendManager
from OPSI.Object import ConfigState
from OPSI.Util.Task.Rights import set_rights
from opsicommon.utils import toJson

client_data_dir = os.environ.get("CLIENT_DATA_DIR")
tmp_dir = f"{client_data_dir}/../{os.environ.get('PRODUCT_ID')}.tmp"

backend = BackendManager(
	dispatchConfigFile='/etc/opsi/backendManager/dispatch.conf',
	backendConfigDir='/etc/opsi/backends',
	extensionConfigDir='/etc/opsi/backendManager/extend.d'
)


print("starting preinst (python)")
if os.path.exists(tmp_dir):
	print(f"Temporary directory {tmp_dir} already exists, aborting")
	sys.exit(1)

os.makedirs(tmp_dir, exist_ok=True)
os.makedirs(client_data_dir, exist_ok=True)

if os.path.exists(f"{client_data_dir}/files/opsi/custom"):
	print("Saving old custom dir")
	shutil.copytree(f"{client_data_dir}/files/opsi/custom", f"{tmp_dir}/custom")
elif os.path.exists(f"{client_data_dir}/files/custom"):
	print("Saving custom dir")
	shutil.copytree(f"{client_data_dir}/files/custom", f"{tmp_dir}/custom")

config = backend.config_getIdents(id="opsiclientd.event_on_shutdown.active")
if not config:
	backend.config_createBool("opsiclientd.event_on_shutdown.active", defaultValues=False)

clients_on_depot = backend.getClientsOnDepot(socket.getfqdn())
productPropertyStates = backend.productPropertyState_getObjects(productId="opsi-client-agent", propertyId="on_shutdown_install", values=["on", "\"[on]\""], objectId=clients_on_depot)
configStates = []
for pps in productPropertyStates:
	configStates.append(ConfigState("opsiclientd.event_on_shutdown.active", pps.objectId, values=True))
print(f"Setting new configStates for {len(configStates)} clients")
backend.configState_updateObjects(configStates)

#******************************************
# START opsi-client-kiosk migration
#******************************************
# OCK = abbreviation for opsi-client-kiosk

#Set kiosk paths
kiosk_in_agent_dir = f"{client_data_dir}/files/opsiclientdkiosk"
ock_dir = f"{client_data_dir}/../opsi-client-kiosk"

# Only migrate if kiosk exists in former client-agent
# and the kiosk package was not installed on depot before
if os.path.exists(kiosk_in_agent_dir) and not os.path.exists(ock_dir):
	#opsi-client-kiosk dirs
	ock_app_dir = f"{ock_dir}/files/app"
	ock_migration_dir = f"{ock_dir}/migration"

	# possible ock_custom directories in client agent
	ock_custom_in_agent_dir = ""
	for path in (f"{kiosk_in_agent_dir}/app/ock_custom", f"{kiosk_in_agent_dir}/ock_custom", f"{kiosk_in_agent_dir}/files_to_copy/ock_custom"):
		if os.path.exists(path):
			ock_custom_in_agent_dir = path
			break

	# create folder where the ock_custom folder should be saved
	# create folder migrate (used as flag in postinst to decide if kiosk package should be installed or not)
	for path in (ock_dir, ock_app_dir, ock_migration_dir):
		os.makedirs(path, exist_ok=True)

	# create "dummy" product to migrate properties
	# opsi-admin -d method createProduct "localboot" "opsi-client-kiosk" "Opsi Client Kiosk" "4.1.0.0" "1"

	# Handle properties
	for key in ("startmenue_entry", "startmenue_folder", "desktop_icon"):
		data = backend.productPropertyState_getObjects(productId="opsi-client-agent", propertyId=f"kiosk_{key}")
		with open(f"{ock_migration_dir}/{key}.json", "w") as outfile:
			outfile.write(toJson(data).replace("opsi-client-agent", "opsi-client-kiosk").replace(f"kiosk_{key}", key))

	# Handle ock_custom folder
	if ock_custom_in_agent_dir:
		print("Saving ock_custom folder to new place...")
		print(f"   coping ${ock_custom_in_agent_dir} to ${ock_app_dir}")
		shutil.rmtree(f"{ock_app_dir}/ock_custom", ignore_errors=True)
		shutil.copytree(ock_custom_in_agent_dir, f"{ock_app_dir}/ock_custom")

	set_rights(ock_dir)
	print("Finished kiosk migration")

print("Finished preinst")
sys.exit(0)
