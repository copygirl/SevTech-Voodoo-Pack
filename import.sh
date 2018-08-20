#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp -f /home/nikky/dev/Voodoo/voodoo/build/libs/voodoo.jar bootstrap-voodoo.jar

java -jar bootstrap-voodoo.jar import curse "https://minecraft.curseforge.com/projects/sevtech-ages/files/2570732/download"

if [ ! $? -eq 0 ]; then
    echo "Error importing $pack from curse"
    exit 1
fi