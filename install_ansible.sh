# This script is to first install Ansible and Terraform on the Ansible Master VM.

sudo apt update
sudo apt upgrade

# Prerequeries
sudo apt -y install software-properties-common gnupg2 curl

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt install -y ansible

ansible-galaxy role install geerlingguy.pip
ansible-galaxy role install geerlingguy.docker

# Install Docker and Code-Server

ansible-galaxy collection install community.docker
ansible-playbook ansible_docker/site.yml

# End
