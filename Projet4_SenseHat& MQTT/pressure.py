from sense_hat import SenseHat
sense = SenseHat()

pressure = sense.get_pressure()
print("Pressure: %s Millibars" % pressure)
sense.show_message("Pressure: %s Millibars" % pressure)
