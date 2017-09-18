from jnpr.junos import Device
from pprint import pprint
import sys
hostname = input("Device hostname: ")
username = input("Device username: ")
#password = getpass("Device password: ")
# NETCONF session over SSH
dev = Device(host=hostname, user=username)
# Telnet connection
#dev = Device(host=hostname, user=username, passwd=password, mode='telnet', port='23')
# Serial console connection
#dev = Device(host=hostname, user=username, passwd=password, mode='serial', port='/dev/ttyUSB0')
try:
   dev.open()
except Exception as err:
   print (err)
   sys.exit(1)
pprint (dev.facts)
dev.close()
