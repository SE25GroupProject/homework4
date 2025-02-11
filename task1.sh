#!/bin/bash

# Start infinite.sh in the background
bash infinite.sh &

# Allow some time for the script to start
sleep 1

# Find and kill the infinite.sh process
pid=$(ps -ef | grep '[b]ash infinite.sh' | awk '{print $2}')
if [ -n "$pid" ]; then
    kill -9 "$pid"
    echo "infinite.sh terminated successfully"
else
    echo "Failed to find infinite.sh"
fi
