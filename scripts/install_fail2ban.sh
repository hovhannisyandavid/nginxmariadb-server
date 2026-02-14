#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y fail2ban

sudo bash -c 'cat > /etc/fail2ban/jail.local <<EOF
[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
maxretry = 5
bantime = 3600
EOF'

sudo systemctl enable fail2ban
sudo systemctl restart fail2ban
