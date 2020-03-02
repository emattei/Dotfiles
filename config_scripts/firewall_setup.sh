
# Basic configuration for UFW (Uncomplicated FireWall)
# 'sudo apt install ufw' to install
# 'sudo ufw status' to check status

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh

# Uncomment if a webserver is installed on the machine
#sudo ufw allow 80
#sudo ufw allow 443

# Start firewall
sudo ufw enable
