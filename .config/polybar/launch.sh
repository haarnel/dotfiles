#!/usr/bin/env bash
killall -q polybar
polybar mini >>/tmp/polybar.log 2>&1 &
