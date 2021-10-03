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
# to = (percent + 9) // 10 * 10
# print(f"{icons[to]}")
print(int(percent) - 5)
