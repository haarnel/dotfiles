#!/usr/bin/python
import psutil

icons = {
    10: " ",
    20: " ",
    30: " ",
    40: " ",
    50: " ",
    60: " ",
    70: " ",
    80: " ",
    90: " ",
    100: "",
}


percent = psutil.sensors_battery().percent
print(int(percent) - 5)
