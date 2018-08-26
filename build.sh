#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

./init.sh

find . -name \*.entry.hjson -type f -delete

echo "Importing .yaml"
java -jar "$DIR/bootstrap-voodoo.jar" import yaml "$DIR/SevTech.yaml"
if [ ! $? -eq 0 ]; then
    echo "Error in step: Flatten"
    exit 1
fi

find . -name \*.entry.lock.json -type f -delete

echo "Building Modpack"
java -jar "$DIR/bootstrap-voodoo.jar" build "$DIR/SevTech.pack.hjson" -o SevTech.lock.json --updateAll
if [ ! $? -eq 0 ]; then
    echo "Error in step: Build"
    exit 1
fi