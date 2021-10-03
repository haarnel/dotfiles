#!/usr/bin/env bash

killall -q polybar
polybar main >>/tmp/polybar1.log 2>&1 &

