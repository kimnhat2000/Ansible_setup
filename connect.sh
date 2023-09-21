#!/bin/bash

# Define the list of servers to copy keys to
servers=("server01" "server02" "server03")

# Define the username for SSH copy (e.g., root)
username="root"

# Define the password
password="1234"

# Define the path to the SSH identity file
identity_file="/home/Integrations/.ssh/id_rsa.pub"

# Loop through the list of servers and run ssh-copy-id with sshpass
for server in "${servers[@]}"; do
  # Use sshpass to provide the password and run ssh-copy-id with the identity file
  sshpass -p "$password" ssh-copy-id -o StrictHostKeyChecking=no $username@$server
done

# Optional: Display a message indicating success
echo "SSH keys copied to servers: ${servers[*]}"
