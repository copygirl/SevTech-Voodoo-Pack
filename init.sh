#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo updating voodoo bootstrap

curl -o bootstrap-voodoo.jar https://ci.elytradev.com/job/elytra/job/Voodoo/job/rewrite/60/artifact/bootstrap/build/libs/bootstrap-voodoo-60.jar

# cp -f ~/dev/Voodoo/voodoo/build/libs/voodoo.jar bootstrap-voodoo.jar