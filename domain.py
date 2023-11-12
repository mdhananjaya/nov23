import os, sys
location=sys.argv[1]
location1=sys.argv[2]
readTemplate('/home/oracle/jenkins/scripts/wls.jar')
cd('/Security/base_domain/User/weblogic')
cmo.setPassword('weblogic1')
cd('/Server/AdminServer')
setOption('ServerStartMode', 'prod')
cmo.setName('admin_test')
cmo.setListenPort(7001)
cmo.setListenAddress('192.168.0.153')
writeDomain('/u01/app/oracle/sept23/'+ location +'/user_projects/domains/'+ location1)
closeTemplate()
print '>>>Domain created successfully>>>'
print 'Use the Domain now'
exit()
