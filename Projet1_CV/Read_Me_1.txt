Dans ce projet, j'ai installé et configuré un serveur web Apache2 par les commandes suivantes:

sudo apt update
sudo apt upgrade
sudo apt update
sudo apt install apache2
sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/
Verification 
wget -O verif_apache.html http://127.0.0.1
cat ./verif_apache.html
apache2 restart 
NB: Au lieu d'écrire "sudo" à chaque fois, on peut juste écrire la commande "sudo su root " pour activer l'utilisateur root.

Puis j'ai écrit mon cv en code html sur le logiciel Atome et changé la permision à PI par les commandes :

cd /var/www
sudo chown pi:html
ls -al

Dans le dossier www/ j'ai supprimé le fichier "index.html" et je l'ai remplacé par :
mon_cv.html        mon_cv.css       photo_cv.png 

Pour l'installation et la configuration de dnsmasq j'ai utlisé les commandes suivantes :
sudo apt update           //mise à jour 
sudo apt upgrade
sudo apt install dnsmasq  // installation dnsmasq
sudo nano /etc/dnsmasq.conf      //pour décommenter "domain-needed","bogus-priv", " expand-hosts" et écrire "domain=ZR.local"
sudo service dnsmasq restart
sudo nano/etc/hosts           // pour donner le nom du domain 172.20.10.3   CV

Pour la vérification on utilise le cmd de PC 
nslookup
server 172.20.10.3
mon_cv.html 
ping CV


