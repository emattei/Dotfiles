sudo apt update && sudo apt install -y curl\
    fonts-freefont-otf \
    fonts-liberation2 \
    fonts-mplus \
    neovim \
    pass \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    guake \
    wget \
    geany \
    python3-pip

# Setting up Docker
## Add the gpg key for docker.
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
## Add the repo for docker.
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
## Install docker
sudo apt update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Setting up Google SDK
## Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
## Import Cloud key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
## Install
sudo apt-get update && sudo apt-get install google-cloud-sdk
## Run gcloud init
