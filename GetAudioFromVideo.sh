#!/bin/bash

read -p "Please choose a codec 1 for MP3, 2 for WAV and 3 for AAC: " codec

# Error handler
if [ $# -eq 0 ]; then
    echo "Error: No argument provided. Please add a path as an argument"
    exit 1
fi
# Error handler
if [[ "$codec" != 1 && "$codec" != 2 && "$codec" != 3 ]]; then
    echo "Please choose a valid coded"
    exit 1
fi

exit 1
