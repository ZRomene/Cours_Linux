First mini test: 
sudo apt-get update
sudo apt-get install sense-hat
sudo reboot
sudo apt install python3 idle3
sudo nano testHat.py
inside the file the folowing script: 
from sense_hat import SenseHat
sense = SenseHat()
sense.show_message("Hello world!")
sudo python testHat.py
Le texte s’affiche sur le matrice led
https://www.gotronic.fr/pj2-35573-sensehat-fr-1599.pdf
https://projects.raspberrypi.org/en/projects/generic-python-install-python3

Second mini test:
inside the file the folowing script: 
testHat.py
from sense_hat import SenseHat
sense = SenseHat()

#temperature
temp = sense.get_temperature()
print("Temperature: %s C" % temp)
sense.show_message("Temperature: %s C" % temp)

#humidity
humidity = sense.get_humidity()
print("Humidity: %s %%" % humidity)
sense.show_message("Humidity: %s %%" % humidity)

#pressure
pressure = sense.get_pressure()
print("Pressure: %s Millibars" % pressure)
sense.show_message("Pressure: %s Millibars" % pressure)
https://github.com/astro-pi/python-sense-hat/blob/master/examples/README.md quelques codes pour jouer avec les couleurs 

Third mini test:
npm install node-red-node-pi-sense-hat
https://flows.nodered.org/node/node-red-node-pi-sense-hat
sudo apt-get update
sudo apt-get install sense-hat
sudo pip3 install pillow
https://raspberrytips.fr/tutoriel-sense-hat-2/
https://pythonhosted.org/sense-hat/api/

Transfert et affichage des données senseHat sur le dashbord du récepteur:
Pour faire cette partie j'ai utlisé les articles suivants:
https://akril.net/utilisation-des-led-du-module-sense-hat-pour-raspberry-pi/
https://patriot-geek.blogspot.com/2017/11/node-red-mqtt-dashboard.html?m=1
https://projetsdiy.fr/mosquitto-broker-mqtt-raspberry-pi/
https://www.youtube.com/watch?v=u6kuHMY5pHM
https://www.youtube.com/watch?v=c8iNBzsnoR4
https://pythonhosted.org/sense-hat/api/
https://raspberrytips.fr/tutoriel-sense-hat-2/
https://projetsdiy.fr/mosquitto-broker-mqtt-raspberry-pi/
