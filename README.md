I have every necessary tools including `op`, `git`, `sudo`, `curl`, `openssh-server`, `openssh-client`, `net-tools`, `gnupg2`, `ansible`, `sshpass` installed for control node so it can be useful for different tasks and tests besides running ansible network.

[Link to my repo](https://github.com/kimnhat2000/Ansible_setup/tree/integrations)

# STEPS TO DEPLOY ANSIBLE NETWOR

### Clone project from my repo
    git clone -b integrations git@github.com:kimnhat2000/Ansible_setup.git

### cd to Ansible_setup and run
    docker-compose up -d

### Only run this after making a change to dockerfile 
    docker-compose build 

### Only run this after making a change to project folder
    docker-compose up --force-recreate -d

### Connect to Control Node
    docker exec -it --user Integrations ubuntu /bin/bash

### Run script to connect to servers in network
    bash connect.sh

### List all alvailable hosts in ansible
    ansible all --list-hosts

### Run test playbook
    ansible-playbook -i hosts testfile.yml

### To run a playbook on a specific host in an inventory 
    ansible-playbook -i hosts -l <host> playbook.yml

# Ansible vault
## Create a env file to store secret
ansible-vault create secret.yml

### A new fromControlNode.txt should be created for all hosts in our ansible network. We can test by ssh to them
    ssh root@server01    
    ls   
    cat fromControlNode.txt   


