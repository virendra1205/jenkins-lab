#! /bin/bash 

# Install and setup docker-ce
sudo curl -sSL https://get.docker.com | sh 
sudo echo "Installation completed" 

sudo systemctl start docker
sudo systemctl enable docker


sudo echo "docker Version:- "
docker --version 


sudo echo "Adiing $USER to docker group"
sudo usermod -aG docker vyadav


sudo echo "Install and configure docker compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version


sudo echo "Docker setup completed"
