#!/bin/bash

TEMPLATES_PATH="/Users/$(whoami)/Library/Developer/Xcode/Templates/Salaourn"
mkdir -pv $TEMPLATES_PATH

cp -R Templates/ $TEMPLATES_PATH/

echo "Template files successfully stored in:"
echo $TEMPLATES_PATH
echo
echo "Remember to quit Xcode (if already running)!"