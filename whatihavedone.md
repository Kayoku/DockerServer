https://docs.ovh.com/fr/dedicated/securiser-un-serveur-dedie/

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install nginx-full mariadb-server mariadb-client curl

== Docker install ==

curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker jordan
sudo apt-get install docker-compose
git clone https://github.com/Kayoku/DockerServer
cd DockerServer
cp apcu.config.php ../nextcloud/config/
./run.sh

== Nextcloud ==

create admin user & db connexion
