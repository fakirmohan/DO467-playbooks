#!/bin/bash

sudo apt update 
sudo apt install ca-certificates curl openssh-server tzdata perl -y
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash script.deb.sh
sudo apt install gitlab-ce -y
sudo ufw allow http
sudo ufw allow https
sudo ufw allow OpenSSH
sudo gitlab-ctl reconfigure
sudo systemctl enable gitlab-ce
sudo systemctl start gitlab-ce
