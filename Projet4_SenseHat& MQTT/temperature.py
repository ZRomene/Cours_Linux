from sense_hat import SenseHat
sense = SenseHat()

#temperature
temp = sense.get_temperature()
print("Temperature: %s C" % temp)
sense.show_message("Temperature: %s C" % temp)


