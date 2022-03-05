#Updates your System
apt update -y && apt upgrade -y 

#Run this command to download the current stable release of Docker Compose:
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#Apply executable permissions to the binary:
chmod +x /usr/local/bin/docker-compose

#Check Installation
docker-compose --version
