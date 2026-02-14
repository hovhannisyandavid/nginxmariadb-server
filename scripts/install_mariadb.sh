#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y mariadb-server

sudo systemctl enable mariadb
sudo systemctl start mariadb

sudo mysql -e "CREATE DATABASE IF NOT EXISTS projectdb;"
sudo mysql -e "CREATE USER IF NOT EXISTS 'projectuser'@'%' IDENTIFIED BY 'password123';"
sudo mysql -e "GRANT ALL PRIVILEGES ON projectdb.* TO 'projectuser'@'%';"
sudo mysql -e "FLUSH PRIVILEGES;"
