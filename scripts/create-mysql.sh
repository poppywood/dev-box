#!/usr/bin/env bash

mysql -uroot -proot -e "DROP DATABASE IF EXISTS u2me";
mysql -uroot -proot -e "CREATE DATABASE u2me DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_unicode_ci";
