#!/usr/bin/env bash
set -e

sudo apt update && sudo apt upgrade -y

sudo apt install -y ufw
sudo ufw allow 80/tcp
sudo ufw allow 3306/tcp
sudo ufw --force enable

sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config || true
sudo systemctl restart ssh || true
