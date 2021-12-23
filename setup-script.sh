#Choose a hostname
ubuntu-g-4vcpu-16gb-sfo3-01-datauno-docker

# Login using SSH
ssh root@your_server_ip

-> https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-20-04
-> https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-20-04

#Install Git
Generally already installed

#General uddates
Use the apt package management tools to update your local package index.
sudo apt update

#Setting Up Git
Configuration can be achieved by using the git config command. 
git config --global user.name "Your Name"
git config --global user.email "youremail@domain.com"

Git configuration details:
git config --list
nano ~/.gitconfig

#Install and Use Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl status docker

-> https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

#Install and Use Docker Compose
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.2.2/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
#This command installs Compose V2 for the active user under $HOME directory. To install Docker Compose for all users on your system, replace ~/.docker/cli-plugins with /usr/local/lib/docker/cli-plugins.
chmod +x ~/.docker/cli-plugins/docker-compose
docker compose version


#Set Up a Firewall with UFW
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable -y
sudo ufw status verbose

-> https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04

#Cloudflare and Nginx
-> https://www.digitalocean.com/community/tutorials/how-to-host-a-website-using-cloudflare-and-nginx-on-ubuntu-20-04

#Set Up a Private Docker Registry
-> https://www.digitalocean.com/community/tutorials/how-to-set-up-a-private-docker-registry-on-ubuntu-20-04

#Harden OpenSSH Client
-> https://www.digitalocean.com/community/tutorials/how-to-harden-openssh-client-on-ubuntu-20-04

#Set Up Nginx with HTTP/2 Support
-> https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-with-http2-support-on-ubuntu-20-04

#Install Nginx
-> https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04-quickstart

#Install and Use ClickHouse
-> https://www.digitalocean.com/community/tutorials/how-to-install-and-use-clickhouse-on-ubuntu-20-04

#Share Data between Docker Containers
-> https://www.digitalocean.com/community/tutorials/how-to-share-data-between-docker-containers

#Share Data Between the Docker Container and the Host
-> https://www.digitalocean.com/community/tutorials/how-to-share-data-between-the-docker-container-and-the-host

#Create Droplets from Custom Images
-> https://docs.digitalocean.com/products/images/custom-images/how-to/create-droplets/




