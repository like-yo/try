#!/bin/bash
FOLDER_PATH="findHardDisk"
if [ -d "$FOLDER_PATH" ]; then
    echo "Folder exists. Deleting it..."
    rm -rf "$FOLDER_PATH"
fi
echo "findHardDisk Folder are Creating ..."
mkdir -p "$FOLDER_PATH"

cd findHardDisk
cmake ..
make
./try_find
ls -lah