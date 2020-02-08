sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release; echo "$UBUNTU_CODENAME") \
   stable"

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo service docker start

curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
