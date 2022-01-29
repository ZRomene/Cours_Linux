Création d'un OS personnalisé avec Buildroot :

On commance par installer le qemu par la commande sudo apt-get install qemu-system-arm. 
Puis on install libncurses5- dev par la commande sudo apt-get install libncurses5-dev bc
On utilise ensuite la commande sudo apt install build-essential , on installe manpages-dev par la commande sudo apt-get install manpages-dev et la commande unzip.
Il est essentiel de faire l'update et l'upgrade du systeme avant d'installer le buildroot par les deux commandes sudo apt-get upgrade et sudo apt-get update.
On télécharge le buildroot par la commande git clone https://github.com/buildroot/buildroot.git aprés avoir installer le git au premier lieu en écrivant sudo get install git .
Puis dans le dossier board/ raspberrypi on génere l'image de notre modele de raspberry pi 3 par la commande cat genimage-raspberrypi3.cfg
On lance la commande make raspberry3_defconfig dans le but de ...
Avec la commande make menuconfig on choisit et installe tous les package qu'on veut accorder à note OS personnalisé .
Pour moi j'ai juste installé le ssh dans Target packages --> Network applications --> open ssh  et j'ai fait la configuration d'internet en suivant les étapes dans le site suivant https://blog.crysys.hu/2018/06/enabling-wifi-and-converting-the-raspberry-pi-into-a-wifi-ap/ 
Aprés toutes configurations faites, on crée l'image de notre système d'exploitation par la commande make -j8 ou bien on la lance en arrière plan par la commande make -j8&.
Une fois l'image et préte , on utlise RaspberryPi imager pour la télécharger dans la micro SD qui sera insérée dans la raspberry pi3.
