!#/bin/bash

# add docker repo
tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/fedora/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

# install docker engine
dnf install docker-engine

# add current user to docker group
groupadd docker
gpasswd -a ${USER} docker

# enabled and start service
systemctl enable docker.service
systemctl start docker
