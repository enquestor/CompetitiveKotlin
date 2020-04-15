#!/bin/sh

source_filename="$1"

echo "[kk] Compiling $source_filename ..."
kotlinc "$1".kt

compiled_filename=$(ls -lt | sed -n 2p | awk '{ print $9 }')
clean_filename=$(echo "$compiled_filename" | rev | sed -e "s/^.*\.//1" | rev)

echo "[kk] Executing ..."
kotlin "$clean_filename"

rm "$compiled_filename"