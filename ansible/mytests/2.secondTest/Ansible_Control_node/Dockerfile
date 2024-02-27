# Ubuntu image latest
FROM ubuntu:latest

# Disable interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y openssh-server openssh-client net-tools ansible && \
    apt-get clean

CMD ["/bin/bash"]
