#!/bin/bash

set -e

ip="127.0.0.1"
if [[ $1 != "" ]]; then
    ip=$1
fi

nc -lvnp 12000 -s ${ip}
