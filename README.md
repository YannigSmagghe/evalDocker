# evalDocker
Projet Docker !
===================


Se groupe se compose de

 1. Yannig Smagghe (dev9)
 2. Thibauld Delaitre (A4)
 3. Alban Lamberty (A4)
 4. Kevin Cogerino (A4)

----------

Pré-requis
-------------
Installation de docker => https://docs.docker.com/engine/installation/
Installation de docker compose => https://docs.docker.com/compose/install/
Installation de pip pour compose :
```
sudo apt-get install python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 
```

#### <i class="icon-upload"></i>Copié le projet

Nous utilisons git pour le versionning de notre projet:
Lancer git clone sur le projet : 
```
git clone https://github.com/YannigSmagghe/evalDocker
```

#### <i class="icon-pencil"></i> Lancer le projet
Se placer dans le dossier contenant le projet
```
sudo docker-compose up
```

#### <i class="icon-pencil"></i> Sécurisation

La mise en place de la sécurité se fait via les 3 scripts ils sont exécuté sur le serveur nginx via le dockerfile :
```
my_cron.sh
my_scriptsecu.sh
```
Le fichier **my_firewall.sh** est à lire, sans le paramètres  **--privilege** il n'est pas possible de gérer ufw dans le container.

#### <i class="icon-trash"></i> Mots de passes
Phpmyadmin : http://localhost:8888/ user : titi mdp : toto

#### <i class="icon-trash"></i> Reste à faire
Sous ranch : créer 2 api key **advanced**
Déclarer l'host via la commande :
```
sudo docker run --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.2.2 http://localhost:8080/v1/scripts/34D113B35079BC140F76:1483142400000:RnkwCWcCBj32tC8wF4aazxyV8gM
```
set les clé api  :
```
sudo ./rancher-compose --url http://127.0.0.1:8080 --access-key <API KEY> --secret-key <API KEY SECRET> up
```
Mot de passe dans le build généré de manière automatique et non en clair dans le code (via le packet apg par exemple, attention toutefois au caractères spéciaux.)

Mettre en place les cron à l'aide du fichier **my_cron.sh**


