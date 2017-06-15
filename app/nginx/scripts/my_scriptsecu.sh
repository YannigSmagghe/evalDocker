#!/bin/bash
#Script d'installation des outils de securite
#Install_v1.bash


#Installation Logwatch
apt-get install logwatch -y

#Creation dossier logwatch
mkdir /var/cache/logwatch

#installation Fail2ban
apt-get install fail2ban -y

#creation dossier auth.log
touch auth.log /var/log/auth.log

#modification1 fail2ban
sed -i -e "s#/var/run/fail2ban/fail2ban.sock#/var/run/fail2ban.sock#g" /etc/fail2ban/fail2ban.conf

#lancement de fail2ban
fail2ban-client -x start

#installation de rkhunter
apt-get install -y rkhunter

#mise a jours de rkhunter
rkhunter --update

#modification rkhunter
sed -i -e "s_SCRIPTWHITELIST=/usr/bin/lwp-request_#SCRIPTWHITELIST=/usr/bin/lwp-request_g" /etc/rkhunter.conf 

#verifaction de rkhunter
rkhunter --checkall

#dependance de chkrootkit
apt-get install openssh-client -y

#installation de chkrootkit
apt-get install chkrootkit -y

#lancement de chkrootkit
chkrootkit -q

