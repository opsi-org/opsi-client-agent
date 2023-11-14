#!/usr/bin/opsi-python

import os
import sys
import shutil
import socket
from pathlib import Path

from opsicommon.client.opsiservice import get_service_client
from opsicommon.objects import ConfigState

depot_id = os.environ.get("DEPOT_ID") or socket.getfqdn()
client_data_dir = Path(os.environ.get("CLIENT_DATA_DIR"))
tmp_dir = (client_data_dir / ".." / os.environ.get("PRODUCT_ID")).with_suffix(".tmp")

backend = get_service_client()

print("starting preinst (python)")
if tmp_dir.exists():
	print(f"Temporary directory {tmp_dir} already exists, aborting")
	sys.exit(1)

client_data_dir.mkdir(exist_ok=True)
tmp_dir.mkdir()

if (client_data_dir / "files" / "opsi" / "custom").exists():
	print("Saving old custom dir")
	shutil.copytree(str(client_data_dir / "files" / "opsi" / "custom"), str(tmp_dir / "custom"))
elif (client_data_dir / "files" / "custom").exists():
	print("Saving custom dir")
	shutil.copytree(str(client_data_dir / "files" / "custom"), str(tmp_dir / "custom"))


config = backend.config_getIdents(id="opsiclientd.event_on_shutdown.active")
if not config:
	backend.config_createBool("opsiclientd.event_on_shutdown.active", defaultValues=False)

if (client_data_dir / "files" / "opsiclientkiosk").is_dir() and not (client_data_dir / ".." / "opsi-client-kiosk").is_dir():
	print("Detected old opsi-client-agent and no kiosk package, aborting - install opsi-client-agent >=4.2.0.0 and <4.2.0.23 for migration")
	sys.exit(1)

print("Finished preinst")
sys.exit(0)
