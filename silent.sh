#!/bin/bash
RES=/home/oracle/jenkins/scripts
MID=$middleware
DOMAIN=$domain
sed -i 's/ORACLE_HOME=\S*\S/\ORACLE_HOME=\/u01\/app\/oracle\/\sept23\/'$MID'/g' $RES/wls.rsp
PATH=/home/oracle/jenkins/scripts/jdk/bin:$PATH
java -jar /home/oracle/jenkins/scripts/fmw_12.2.1.2.0_wls.jar -silent -responseFile /home/oracle/jenkins/scripts/wls.rsp  -invPtrLoc /u01/app/oracle/oraInst.loc


cp /u01/app/oracle/sept23/$MID/wlserver/common/templates/wls/wls.jar /home/oracle/jenkins/scripts
/u01/app/oracle/sept23/$MID/oracle_common/common/bin/wlst.sh $RES/domain.py $MID $DOMAIN
