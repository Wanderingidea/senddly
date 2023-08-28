#!/bin/bash

which >/dev/null 2>&1 socat || { echo 'install socat first' ; exit 0; }

SERIAL_DEVICE="$1"
DELAY_SECONDS=0.3

# Set up a virtual terminal and link it to the serial device
socat -d -d PTY,link=/tmp/virtual-tty,rawer,echo=0 "$SERIAL_DEVICE" &

# Function to send characters with a delay
send_with_delay() {
    local string=$1
    for ((i = 0; i < ${#string}; i++)); do
        sleep "$DELAY_SECONDS"
        echo -n "${string:i:1}" > "/tmp/virtual-tty"
        echo "sending ${string:i:1}"
    done
}

# Send the input string with a delay
send_with_delay $2

# Clean up and close the virtual terminal
pkill -f "socat.*virtual-tty"
