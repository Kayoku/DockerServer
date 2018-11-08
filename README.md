# DockerServer

# Todo

- Fichier contenant les données sensibles crypté ?
  - Faire un fichier contenant les infos sensibles => Avec macro (exemple: MDP_MARIADB = xxxyyyxxx)
  - Script de cryptage / decryptage avec AES 256 : https://angristan.fr/chiffrer-fichier-openssl-linux/

- Ajouter le website hugo dans le conteneur web nginx
- Ajouter un système de monitoring docker

- Créer système de backup sécurisé. 
(1 fois par semaine, dimanche 3h du matin, tous les sites "maintenance backup", récupération des fichiers, cryptage, envoie vers le serveur de sauvegarde, decryptage, suppression du moins récent backup de façon a n'en garder que x)
