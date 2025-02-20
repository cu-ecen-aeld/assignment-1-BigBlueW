#!/bin/sh

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
    echo "ERROR1"
    exit 1
fi

dir=$(dirname "$writefile")
mkdir -p "$dir"

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "ERROR2"
    exit 1
fi

