# This script is to first install Ansible and Terraform on the Ansible Master VM.

sudo apt update
sudo apt upgrade

# Prerequeries
sudo apt -y install software-properties-common gnupg2 curl

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt install -y ansible

# Install Terraform
curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt install -y terraform

# End