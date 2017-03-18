#!/bin/bash

dir_name=`date +%Y%m%d`
mkdir -p /mnt/tmp/backup/$dir_name
rsync --archive --one-file-system --hard-links --human-readable --inplace --numeric-ids --delete --delete-excluded --progress --exclude-from=/mnt/tmp/backup/scripts/rsync-exclude.txt --include-from=/mnt/tmp/backup/scripts/rsync-include.txt /mnt/gentoo/* /mnt/tmp/backup/$dir_name
