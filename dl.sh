#!/bin/bash

file="$PWD/$1"

# does file has been passed to script?
if [ "x$1" != "x" ]; then
    # read every line from file
    while read -r line; do
        # download every image preserving original name and add ?randomnumber to download in original quality
        curl -O -J "$line?$(( $RANDOM % 113 + 11 ))"
    done < "$file"
    exit
fi

echo "pass file with links to script"
