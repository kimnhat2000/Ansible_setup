# Centos image latest
FROM centos:latest

# Change the repo URL to vault.centos.org
RUN cd /etc/yum.repos.d/ && \
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Install OpenSSh server with yum
RUN yum -y update && \
    yum -y install openssh-server openssh-clients

# Created because public key is required when starting sshd
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
    ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

# Allow login as root
RUN sed -ri 's/^#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config

# Specify root password
RUN echo "root:0408" | chpasswd

RUN rm -f /run/nologin

EXPOSE 22

# Start sshd
CMD ["/usr/sbin/sshd", "-D"]
