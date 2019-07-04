#!/bin/bash

mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON * . * TO  'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;"
sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf
sudo service mysql restart
