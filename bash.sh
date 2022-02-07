#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install lamp-server^ -y
sudo mysql -u root << EOF
create database wp_db default character set utf8;
create user 'wp_user'@'localhost' identified by 'dedicatted2022';
grant all on wp_db.* to 'wp_user'@'localhost';
flush privileges;
EOF
sudo wget -c http://wordpress.org/latest.tar.gz
sudo tar -xzvf latest.tar.gz
sudo rsync -av wordpress/* /var/www/html
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
sudo rm /var/www/html/index.html
