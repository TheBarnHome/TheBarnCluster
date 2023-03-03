# This script is to first install Ansible on the Ansible Master VM.

sudo apt update
sudo apt upgrade

sudo apt -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

sudo apt install ansible

# End