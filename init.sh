#!/bin/bash

useradd -m -s /bin/bash ansible
mkdir /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
wget https://raw.githubusercontent.com/protowood/stuff/main/id_rsa.pub /home/ansible/.ssh/authorized_keys
chmod 600 /home/ansible/.ssh/id_rsa.pub
chown -R ansible:ansible /home/ansible/.ssh
restorecon -R -v /home/ansible/.ssh
