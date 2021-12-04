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

