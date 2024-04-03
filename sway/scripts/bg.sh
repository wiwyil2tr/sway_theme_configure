#!/bin/sh
swaybg -i $(find ~/.local/share/wallpapers/. -type f | shuf -n1) -m fill &
OLD_PID=$!
while true; do
    sleep 600
    swaybg -i $(find ~/.local/share/wallpapers/. -type f | shuf -n1) -m fill &
    NEXT_PID=$!
    sleep 5
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done
