# Projet 5
## Création d'un micro OS pour Raspberry pi3 avec Buildroot :
Afin d'émuler un Raspberry Pi sur votre PC , on installe un systéme d'exploitation Ubuntu Desktop l'ubuntu 20.04 ( la version la plus récente) soit sur le systéme directement soit sur la machine virtuelle.

Installer le qemu par la commande 
```sh
sudo apt-get install qemu-system-arm
```
Installer  des lib ainsi que les dépendances nécessaires par les commandes 
```sh
sudo apt-get install libncurses5-dev bc
sudo apt install build-essential
sudo apt-get install manpages-dev
```

Il est essentiel de faire l'update et l'upgrade du systeme avant d'installer le buildroot 
```sh
sudo apt-get upgrade
sudo apt-get update
```
Installer le git ..
```sh
sudo get install git
``` 
Téléchargerment de buildroot par la commande 
```sh
git clone https://github.com/buildroot/buildroot.git
``` 
Puis dans le dossier board/ raspberrypi /raspberry pi 3  l'image doit être générée par la commande
```sh
cat genimage-raspberrypi3.cfg
``` 
Installation des packages appropriés , nécessaires et souhaités pour l'OS
```sh
make raspberry3_defconfig
``` 
Il est primordiale d'activer le ssh 
 >`--Target packages` -->`--Network applications`-->`--open ssh`  

La configuration de l'internet est aussi nécessaire , on suit la méthode et les instructions utilisés dans ce blog
https://blog.crysys.hu/2018/06/enabling-wifi-and-converting-the-raspberry-pi-into-a-wifi-ap/ 

Aprés toutes configurations faites, on crée l'image de notre système d'exploitation par la commande 
```sh
make -j8 
``` 
ou bien on la lance en arrière plan par la commande 
```sh
make -j8&
``` 

Une fois l'image et préte , on utlise RaspberryPi imager pour la télécharger dans la micro SD qui sera insérée dans la raspberry pi3.

