sudo apt-get install bluetooth python3-yaml python3-bluetooth
sudo nano rpi-home-automation/ble2tcp/devices.yml
ajouter l'addresse Mac de PC ( écrire ipconfig /all dans le cmd du PC) et de raspberry dans le script 
sudo apt-get install bluetooth
sudo hciconfig hci0 leadv pour que la carte soit visible dans la recherche de l'application (activation de l'advertisment)
sudo gatttool -b <adresse MAC> -I  


J'ai essayé plusieurs méthodes pour transmettre la date de mon iPhone au PC mais malgré que la connection était établie j'ai pas pu configuré le simulteur.

Essai1: j'ai activé le serial port par la commande raspi-config et j'ai utilisé les commandes suivantes pour installer le bluetooth
sudo apt-get install pi-bluetooth 
sudo service bluetooth status'
puis j'ai suivi le tutoriel suivant :

Essai 2: j'ai pensé à utiliser Cedela et Flutter .

Essai 3: j'ai utilisé utiliser les nodes 

Essai 4: J'ai utilisé les nodes Generic BLE configuration  en suivant le tuto suivant https://flows.nodered.org/node/node-red-contrib-generic-ble mais j'ai pas réussi à configurer le simulateur BLE sur mon iphone , j'ai essayé plusieurs : DataWorks, BlueTemp, Bluetooth inspector , CZBLEcontrol ...


