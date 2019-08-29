#!/usr/bin/python

import argparse
import os
import socket
import sys

from OPSI.Backend.BackendManager import BackendManager

__version__ = '1'


def parseCommandline():
	parser = argparse.ArgumentParser(description="Some opsi script.")
	parser.add_argument("--version", "-V", action='version', version=__version__)

	parser.add_argument('filename', help='Config file to patch.')

	args = parser.parse_args()

	return args


def main():
	args = parseCommandline()
	configFile = args.filename

	if not os.path.exists(configFile):
		raise OSError(u"Config file '%s' not found" % configFile)

	depotServerFqdn = socket.getfqdn()
	if not depotServerFqdn:
		raise RuntimeError(u"Failed to get fqdn of depotserver")

	parts = depotServerFqdn.split('.')
	if len(parts) < 2:
		raise ValueError("Not a fqdn: %s" % depotServerFqdn)

	configServerIds = []
	with BackendManager() as b:
		configServerIds = b.host_getIdents(type='OpsiConfigserver')

		if not configServerIds:
			raise Exception(u"Failed to get configserver")
		configServerId = configServerIds[0]
		print u"Configserver id       : %s" % configServerId

		configServerIp = socket.gethostbyname(configServerId)
		if not configServerIp:
			raise Exception(u"Failed to get ip of configserver '%s'" % configServerId)

		print u"Configserver ip       : %s" % configServerIp

		configs = b.config_getObjects(id='clientconfig.configserver.url')
		if configs:
		# Patch #1237 (https://forum.opsi.org/viewtopic.php?f=7&t=6764#p29403)
			configurl = ""
			for url in configs[0].defaultValues:
				if url.endswith("/rpc"):
					url = url[:-4]
				configurl += url
				configurl += ", "
			configurl = configurl[:-2]
		else:
			configurl = "https://" + configServerIp + ":4447"

	depotServerHostname = parts[0]
	print u"Depotserver hostname  : %s" % depotServerHostname

	dnsDomain = '.'.join(parts[1:])
	print u"DNS domain            : %s" % dnsDomain

	print u"Patching config file '%s'" % configFile
	lines = []
	f = open(configFile, 'r')
	for line in f.readlines():
		line = line.replace('<dnsdomain>',     dnsDomain)
		line = line.replace('<tftpserver>',    configServerIp)
		line = line.replace('<servername>',    depotServerHostname)
		line = line.replace('<configserverurl>', configurl)
		lines.append(line)
	f.close()
	f = open(configFile, 'w')
	f.writelines(lines)
	f.close()
	print u"Config file '%s' patched" % configFile


if __name__ == '__main__':
	main()