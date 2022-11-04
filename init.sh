#!/bin/bash

useradd -m -s /bin/bash ansible
mkdir /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
wget -O /home/ansible/.ssh/authorized_keys https://raw.githubusercontent.com/protowood/stuff/main/authorized_keys 
chmod 600 /home/ansible/.ssh/authorized_keys
chown -R ansible:ansible /home/ansible/.ssh

