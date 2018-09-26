#!/bin/bash

/etc/init.d/httpd.sh start
/etc/init.d/mysql.sh start


ip_addr=$(/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|head -n 1|awk '{print $2}'|tr -d "addr:")
ip_tag="{docker_ip_addr}"
replace_config(){
	sed -i "s/${ip_tag}/${ip_addr}/g" $1 
}

replace_config "${install_path}/config.php"


echo '[-] Importing sql file'
mysql < /root/database.sql
rm /root/database.sql

echo '[-] Accessing 127.0.0.1 for the first time'
curl 127.0.0.1 &>/dev/null

exec /etc/init.d/shell.sh /var/www/html
