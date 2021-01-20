#!/usr/bin/python

# Version 2:
# dnsdomain now from backend.getDomain()
# and not from socket.fqdn

from __future__ import print_function

import argparse
import os
import socket

from OPSI.Backend.BackendManager import BackendManager

__version__ = '2'


def main():
	args = parseCommandline()
	configFile = args.filename

	if not os.path.exists(configFile):
		raise OSError(u"Config file '%s' not found" % configFile)

	with BackendManager() as backend:
		try:
			configServerId = backend.host_getIdents(type='OpsiConfigserver')[0]
		except IndexError:
			raise RuntimeError(u"Failed to get configserver")
		print(u"Configserver id       : %s" % configServerId)

		configServerIp = socket.gethostbyname(configServerId)
		if not configServerIp:
			raise RuntimeError(u"Failed to get ip of configserver '%s'" % configServerId)

		print(u"Configserver ip       : %s" % configServerIp)

		configs = backend.config_getObjects(id='clientconfig.configserver.url')
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
		dnsDomain = backend.getDomain()

	depotServerHostname = readHostnameAndDomain()
	print(u"Depotserver hostname  : %s" % depotServerHostname)
	print(u"DNS domain            : %s" % dnsDomain)

	patchConfigFile(configFile, dnsDomain, configServerId, depotServerHostname, configurl)


def parseCommandline():
	parser = argparse.ArgumentParser(description="Some opsi script.")
	parser.add_argument("--version", "-V", action='version', version=__version__)

	parser.add_argument('filename', help='Config file to patch.')

	args = parser.parse_args()

	return args


def readHostnameAndDomain():
	fqdn = socket.getfqdn()
	if not fqdn:
		raise RuntimeError(u"Failed to get fqdn of depotserver")

	parts = fqdn.split('.')
	if len(parts) < 2:
		raise ValueError("Not a fqdn: %s" % fqdn)

	hostname = parts.pop(0)
	#domain = '.'.join(parts)

	#return hostname, domain
	return hostname


def patchConfigFile(filename, dnsDomain, configServerIp, depotServerHostname, configurl):
	print(u"Patching config file '%s'" % filename)

	def replacePlaceholders(line):
		line = line.replace('<dnsdomain>', dnsDomain)
		line = line.replace('<tftpserver>', configServerIp)
		line = line.replace('<servername>', depotServerHostname)
		line = line.replace('<configserverurl>', configurl)
		return line

	with open(filename, 'r') as f:
		lines = [replacePlaceholders(line) for line in f]

	with open(filename, 'w') as f:
		f.writelines(lines)
	print(u"Config file '%s' patched" % filename)


if __name__ == '__main__':
	main()
