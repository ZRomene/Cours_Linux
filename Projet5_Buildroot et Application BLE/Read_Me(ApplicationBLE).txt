Projet domotique: détection de la présence et l'envoyer par BLE 

sudo apt-get install bluetooth python3-yaml python3-bluetooth

sudo nano rpi-home-automation/ble2tcp/devices.yml
ajouter l'addresse Mac de PC ( écrire ipconfig /all dans le cmd du PC) et de raspberry dans le script 

sudo apt-get install bluetooth
sudo hciconfig hci0 leadv pour que la carte soit visible dans la recherche de l'application (activation de l'advertisment)


sudo gatttool -b <adresse MAC> -I  

J'ai essayé plusieurs méthodes pour transmettre la date de mon iPhone au PC mais malgré que la connection est établie j'ai pas pu configuré le simulteur.

