#!/bin/bash
yum update -y
sudo yum install –y patch gcc kernel-headers kernel-devel make perl wget
sudo reboot
sudo wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo yum install VirtualBox-6.0
sudo systemctl status vboxdrv