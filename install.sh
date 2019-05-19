#!/bin/bash

set +e

echo "
╔═════════════════════════════════════════════════════════════╗
║  ╔═══════════════════════════════════════════════════════╗  ║
║  ║                                                       ║  ║
║  ║     █████╗ ██╗     ███████╗██████╗ ███████╗██████╗    ║  ║
║  ║    ██╔══██╗██║     ██╔════╝██╔══██╗██╔════╝██╔══██╗   ║  ║
║  ║    ███████║██║     █████╗  ██████╔╝█████╗  ██║  ██║   ║  ║
║  ║    ██╔══██║██║     ██╔══╝  ██╔══██╗██╔══╝  ██║  ██║   ║  ║
║  ║    ██║  ██║███████╗██║     ██║  ██║███████╗██████╔╝   ║  ║
║  ║    ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═════╝    ║  ║
║  ║                                                       ║  ║
║  ╚═══════════════════════════════════════════════════════╝  ║
╚═════════════════════════════════════════════════════════════╝"

echo "
╔═════════════════════════════════════════════════════════════╗
║   Upgrading System ⬆️                                        ║
╚═════════════════════════════════════════════════════════════╝"

# Update/upgrade system
sudo apt-get update -y && sudo apt-get upgrade -y

echo "
╔═════════════════════════════════════════════════════════════╗
║   Installing Docker 🐳                                      ║
╚═════════════════════════════════════════════════════════════╝"

# Download and run Docker install script
curl -sSL https://get.docker.com | sh

# Add Docker perms to `pi` user
sudo usermod -aG docker pi

# Log Docker version once it's been installed
docker --version

echo "
╔═════════════════════════════════════════════════════════════╗
║   Installing Docker Compose 🐳                              ║
╚═════════════════════════════════════════════════════════════╝"

# Download and run Docker compose install script
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Make compose binary executable
sudo chmod +x /usr/local/bin/docker-compose

# Add static link for compose binary
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Log Docker compose version once it's been installed
docker-compose --version

echo "
╔═════════════════════════════════════════════════════════════╗
║   Downloading ⬇️                                             ║
╚═════════════════════════════════════════════════════════════╝"

# Download and run Alfred install script from GitHub
curl -L https://raw.githubusercontent.com/NuroDev/alfred/master/docker-compose.yml -o ./docker-compose.yml

echo "
╔═════════════════════════════════════════════════════════════╗
║   Starting 🚀                                               ║
╚═════════════════════════════════════════════════════════════╝"

# Build and starts all containers in the stack
docker-compose up -d

echo "
╔═════════════════════════════════════════════════════════════╗
║   Done! ✨                                                  ║
╚═════════════════════════════════════════════════════════════╝"
