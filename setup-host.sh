# Trigger this shell by running the following command:
# wget -O - https://raw.githubusercontent.com/Getslow6/docker-compose/main/setup-host.sh | bash -

# Update Linux to the latest version
sudo apt-get update
sudo apt-get upgrade

# Get docker
curl -sSL https://get.docker.com | sh

# Add permissions so the current user can run docker commands
sudo usermod -aG docker ${USER}

# Make sure docker starts on boot
sudo systemctl enable docker 

# Install docker compose
sudo apt install docker-compose

# Now make the directory where the docker compose file will be added
mkdir -p $HOME/docker/docker-compose

cd $HOME/docker/docker-compose

# Get the docker compose file to the current directory
git clone https://github.com/Getslow6/docker-compose.git .

# Get the docker images
docker-compose pull

# Start the docker images
docker-compose up -d
