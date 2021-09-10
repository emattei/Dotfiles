# Add a new docker group
sudo groupadd docker
# Add current user to the group
sudo usermod -aG docker $USER
# Activate group without rebooting
newgrp docker 
# Run docker hello world
docker run hello-world
