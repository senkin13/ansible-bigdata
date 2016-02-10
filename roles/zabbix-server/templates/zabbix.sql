create database zabbix character set utf8;

grant all privileges on zabbix.* to zabbix@localhost identified by '';

grant all privileges on zabbix.* to zabbix@127.0.0.1 identified by '';

flush privileges;
