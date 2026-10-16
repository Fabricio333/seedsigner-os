#!/bin/sh

# Board wiring profile baked in by `build.sh --hardware=...` (unset = Waveshare 1.3" hat)
if [ -f /etc/seedsigner-hardware ]; then
    export SEEDSIGNER_HARDWARE="$(cat /etc/seedsigner-hardware)"
fi

cd /opt/src/

#/usr/bin/python3 main.py >> /dev/kmsg 2>&1 &  # version that writes output to dmesg
/usr/bin/python3 main.py &
