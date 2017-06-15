
#!/bin/bash


#installation du paquet ufw
#apt-get install -y ufw

#Configuration du paquet ufw
#ERROR

#Cause de l'ERROR
#Docker a une gestion permissive des droits. CF l'erreur en question

#CF
#[Errno 2] iptables v1.4.21: can't initialize iptables table `filter': Permission denied (you must be root)
#Perhaps iptables or your kernel needs to be upgraded.

#Source
#http://blog.viktorpetersson.com/post/101707677489/the-dangers-of-ufw-docker


#PS: Nous "n'avons pas besoin" d'un firewall puisque nous ouvrons que les ports dont nous avons besoin grace a la comman$



#---------------------------------------------------------------------------------------------------------------

#Maj Ufw

#Le paquet UFW fonctionne si nous rentrons en parametre --privilege sinon le docker ne nous donne pas tout les droits.



