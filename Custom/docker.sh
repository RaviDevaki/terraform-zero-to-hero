#!/bin/bash
touch /home/ubuntu/ravi
# Add Docker's official GPG key:
sudo apt-get update && sudo echo "apt-get update ran successfully" >> /home/ubuntu/ravi
sudo apt-get install ca-certificates curl && sudo echo "ac-cert done" >> /home/ubuntu/ravi
sudo install -m 0755 -d /etc/apt/keyrings && sudo echo "Keyrings" >> /home/ubuntu/ravi
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && sudo echo "downloaded docker" >> /home/ubuntu/ravi
sudo chmod a+r /etc/apt/keyrings/docker.asc && sudo echo "a+r" >> /home/ubuntu/ravi
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && sudo echo "tee" >> /home/ubuntu/ravi
sudo apt-get update && sudo echo "apt get update done" >> /home/ubuntu/ravi

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y && sudo echo "docker installed" >> /home/ubuntu/ravi
newgrp docker && sudo echo "grpup created" >> /home/ubuntu/ravi
sudo usermod -aG docker ubuntu && sudo echo "user mod done" >> /home/ubuntu/ravi
