#!/usr/bin/opsi-python

import os
import sys
import shutil
import socket
from pathlib import Path

from OPSI.Backend.BackendManager import BackendManager
from OPSI.Object import ConfigState

client_data_dir = Path(os.environ.get("CLIENT_DATA_DIR"))
tmp_dir = (client_data_dir / ".." / os.environ.get("PRODUCT_ID")).with_suffix(".tmp")

backend = BackendManager(
	dispatchConfigFile='/etc/opsi/backendManager/dispatch.conf',
	backendConfigDir='/etc/opsi/backends',
	extensionConfigDir='/etc/opsi/backendManager/extend.d'
)


print("starting preinst (python)")
if tmp_dir.exists():
	print(f"Temporary directory {tmp_dir} already exists, aborting")
	sys.exit(1)

tmp_dir.mkdir()
client_data_dir.mkdir(exist_ok=True)

if (client_data_dir / "files" / "opsi" / "custom").exists():
	print("Saving old custom dir")
	shutil.copytree(str(client_data_dir / "files" / "opsi" / "custom"), str(tmp_dir / "custom"))
elif (client_data_dir / "files" / "custom").exists():
	print("Saving custom dir")
	shutil.copytree(str(client_data_dir / "files" / "custom"), str(tmp_dir / "custom"))


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

if (client_data_dir / "files" / "opsiclientkiosk").is_dir() and not (client_data_dir / ".." / "opsi-client-kiosk").is_dir():
	print("Detected old opsi-client-agent and no kiosk package, aborting - install opsi-client-agent >=4.2.0.0 and <4.2.0.23 for migration")
	sys.exit(1)

print("Finished preinst")
sys.exit(0)
