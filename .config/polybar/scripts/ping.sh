#!/bin/sh

# DuckDuckGo
HOST=216.58.211.100

if ! ping=$(ping -n -c 1 -W 1 $HOST); then
    echo "ﯢ  ms"
else
    rtt=$(echo "$ping" | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')
    echo "$rtt ms"
fi
