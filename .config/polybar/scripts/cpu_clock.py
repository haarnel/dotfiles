#!/usr/bin/python
import psutil

clock_speed = psutil.cpu_freq()
print(f"{round(clock_speed.current/1000, 1)}")