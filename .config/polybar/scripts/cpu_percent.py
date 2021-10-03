#!/usr/bin/python
import psutil

# print(f"{round(clock_speed.current/1000, 1)}")
cpu_percent = psutil.cpu_percent()
print("{0:.0%}".format(1./3))