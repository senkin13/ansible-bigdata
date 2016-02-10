#!/bin/sh

HOST=
PASS=
PARA=$1

if [ $PARA = "Seconds_Behind_Master" ];then
echo "show slave status\G" | mysql -h ${HOST} -u root -p${PASS} | grep Seconds_Behind_Master | awk '{print $2}'

elif [ $PARA = "Slave_IO_Running" ];then
Slave_IO_Running=`echo "show slave status\G" | mysql -h ${HOST} -u root -p${PASS} | grep Slave_IO_Running | awk '{print $2}'`
  if [ $Slave_IO_Running = "Yes" ]; then
  echo 1
  else 
  echo 0
  fi

elif [ $PARA = "Slave_SQL_Running" ];then
Slave_SQL_Running=`echo "show slave status\G" | mysql -h ${HOST} -u root -p${PASS} | grep Slave_SQL_Running | awk '{print $2}'`
  if [ $Slave_SQL_Running = "Yes" ]; then
  echo 1
  else
  echo 0
  fi

else
echo 0
fi
