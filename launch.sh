#!/bin/bash

# $1 Playboook filename
# $2 EC2 private IP

ansible-playbook -i "$2," $1 --ssh-common-args='-o StrictHostKeyChecking=no' --key-file "~/.ssh/your_key.pem" --extra-vars "ansible_python_interpreter=/usr/bin/python3"