# **Ansible - Fresh Debian 11 install with Docker, Traefik & Portainer**

<br />

# 🎯 Aim

This playbook is used to set up an OVH nude Debian 11 server:
- Base installation
- SSHD settings
- Default user creation
- Docker installation
- Traefik installation
- Portainer installation

<br />

# 📓 Licence
![License: CC0-1.0](https://licensebuttons.net/l/zero/1.0/80x15.png) Creative Commons Zero v1.0 Universal

<br />

# 👀 Prerequisites
## VPS
A nude VPS server at OVH (fresh install) with a SSH key pre-configured

<br />

## Ansible installation
```
sudo apt install ansible
```

<br />

## Ansible modules installation
```
ansible-galaxy collection install community.general
ansible-galaxy collection install community.crypto
ansible-galaxy collection install community.docker
```

<br />


# 🪛 Config
Variables must be set in `vars.json`


<br />

# 🚀 Launch
### Run playbook
```
ansible-playbook -i "10.10.10.10," debian11-docker.yaml --ssh-common-args='-o StrictHostKeyChecking=no' --key-file "~/.ssh/your_key.pem" --extra-vars "ansible_python_interpreter=/usr/bin/python3"
```
