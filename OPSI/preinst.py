#!/usr/bin/opsi-python

import os
import sys
import shutil
import socket

from OPSI.Backend.BackendManager import BackendManager
from OPSI.Object import ConfigState

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

print("Finished preinst")
sys.exit(0)
