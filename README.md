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
sudo docker compose up
```

#### <i class="icon-pencil"></i> Sécurisation

La mise en place de la sécurité se fait via les 3 scripts :
```
my_cron.sh
my_firewall.sh
my_scriptsecu.sh
```
#### <i class="icon-trash"></i> Problèmes possibles

