#!/usr/bin/env bash
set -e

sudo apt update && sudo apt upgrade -y

sudo apt install -y ufw
sudo ufw allow 80/tcp
sudo ufw allow 3306/tcp
sudo ufw --force enable

# SSH hardening 
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config || true 
sudo sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/' /etc/ssh/sshd_config || true 
sudo sed -i 's/#MaxAuthTries 6/MaxAuthTries 3/' /etc/ssh/sshd_config || true 
sudo sed -i 's/#X11Forwarding yes/X11Forwarding no/' /etc/ssh/sshd_config || true
sudo systemctl restart ssh || true
