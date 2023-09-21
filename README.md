I have every necessary tools including `op`, `git`, `sudo`, `curl` etc installed for control node to run ansible network. We can use it to test ssh agent, `op` and ansible 1Password modules

# STEPS TO DEPLOY ANSIBLE NETWOR

### Clone project from my repo
    git clone -b integrations git@github.com:kimnhat2000/Ansible_setup.git

### cd to Ansible_setup and run

### Only run this after making a change to dockerfile 
    docker-compose build 

    docker-compose up -d

### Connect to Control Node
    docker exec -it --user Integrations ubuntu /bin/bash

### Run script to connect to servers in network
    bash connect.sh

### List all alvailable hosts in ansible
    ansible all --list-hosts

### Run test playbook
    ansible-playbook -i hosts testfile.yml

### A new fromControlNode.txt should be created for all hosts in our ansible network. We can test by ssh to them
    ssh root@server01    
    ls   
    cat fromControlNode.txt   


