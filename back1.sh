#!/bin/bash
SRC=~/lessonm/tr1
DEST=~/lessonm/backup1
DATE=$(date +%Y-%m-%d-%H-%M)
mkdir -p "$DEST"
cp -r "$SRC" "$DEST/backup_$DATE" 
echo "Copy completed $DATE" 
