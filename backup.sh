#!/bin/bash

<<info 

This shell script will take periodic backups

eg.
./back.sh <source> <dest>
src /home/ubuntu/scripts
dest /home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%m')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://linux-backups-demo

echo "backup completed and uploaded to s3 "

