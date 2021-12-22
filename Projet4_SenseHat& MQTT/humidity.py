from sense_hat import SenseHat
sense = SenseHat()

#humidity
humidity = sense.get_humidity()
print("Humidity: %s %%" % humidity)
sense.show_message("Humidity: %s %%" % humidity)



