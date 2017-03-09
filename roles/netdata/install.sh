yum install autoconf automake curl gcc git libmnl-devel libuuid-devel lm_sensors make MySQL-python nc pkgconfig python python-psycopg2 PyYAML zlib-devel
cd /opt
git clone https://github.com/firehol/netdata.git --depth=1
cd netdata
./netdata-installer.sh
cp system/netdata-init-d /etc/init.d/netdata
chmod +x /etc/init.d/netdata
chkconfig --add netdata
