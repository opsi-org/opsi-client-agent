#!/usr/bin/python

try:
	import sys, socket, os, re
	from OPSI.Backend.BackendManager import *

	if (len(sys.argv) < 2) or not sys.argv[1]:
		print >> sys.stderr, u"Usage: %s <config file to patch>" % sys.argv[0]
		raise Exception(u"No config file given")

	configFile = sys.argv[1]
	if not os.path.exists(configFile):
		raise Exception(u"Config file '%s' not found" % configFile)

	depotServerFqdn = socket.getfqdn()
	if not depotServerFqdn:
		raise Exception(u"Failed to get fqdn of depotserver")

	parts = depotServerFqdn.split('.')
	if not (len(parts) >= 3):
		raise Exception("Not a fqdn: %s" % depotServerFqdn)

	configServerIds = []
	clientServiceType = None
	b = BackendManager(
		dispatchConfigFile = u'/etc/opsi/backendManager/dispatch.conf',
		backendConfigDir   = u'/etc/opsi/backends',
		extend             = True
	)
	configServerIds = b.host_getIdents(type = 'OpsiConfigserver')

	if not configServerIds:
		raise Exception(u"Failed to get configserver")
	configServerId = configServerIds[0]
	print u"Configserver id       : %s" % configServerId

	configServerIp = socket.gethostbyname(configServerId)
	if not configServerIp:
		raise Exception(u"Failed to get ip of configserver '%s'" % configServerId)

	print u"Configserver ip       : %s" % configServerIp

	configs = b.config_getObjects(id = 'clientconfig.configserver.url')
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
	print u"Client servicetype    : %s" % clientServiceType

	try:
		b.exit()
	except:
		b.backend_exit()

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

except Exception, e:
	print >> sys.stderr, e
	sys.exit(1)

sys.exit(0)
