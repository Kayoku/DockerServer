# DockerServer

# With a new clean debian 9 server

```
# https://docs.ovh.com/fr/dedicated/securiser-un-serveur-dedie/

# Update server
sudo apt-get update
sudo apt-get upgrade

# Install dependencies
sudo apt-get install nginx-full mariadb-server mariadb-client curl git openssl

# Get docker & docker-compose
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker jordan
sudo apt-get install docker-compose

# Clone this repository
git clone https://github.com/Kayoku/DockerServer
cd DockerServer
mkdir -p ./nextcloud/config/ && cp ./base/config/apcu.config.php ./nextcloud/config/
./run.sh

# create admin user & db connexion
```

# Todo

- Fichier contenant les données sensibles crypté ?
  - Faire un fichier contenant les infos sensibles => Avec macro (exemple: MDP_MARIADB = xxxyyyxxx)
  - Script de cryptage / decryptage avec AES 256 : https://angristan.fr/chiffrer-fichier-openssl-linux/

- Ajouter le website hugo dans le conteneur web nginx
- Ajouter un système de monitoring docker

- Créer système de backup sécurisé. 
(1 fois par semaine, dimanche 3h du matin, tous les sites "maintenance backup", récupération des fichiers, cryptage, envoie vers le serveur de sauvegarde, decryptage, suppression du moins récent backup de façon a n'en garder que x)
