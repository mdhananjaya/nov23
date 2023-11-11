#!/bin/bash
if  [ "$Tango_app" = "hcmapp" ]
then
  echo "calling the hcm script to deploy"
      /home/oracle/jenkins/scripts/hcmapp.sh
elif [ "$Tango_app" = "payrollapp" ]
then
  echo "calling the payrollapp"
  /home/oracle/jenkins/scripts/payrollapp.sh
elif [ "$Tango_app" = "orderassistanceapp" ]
then
   echo "calling the orderassistanceapp"
   /home/oracle/jenkins/scripts/order.sh
else
  echo "nothing has been selected"
fi
