#!/bin/sh

cur_dir=`pwd`
backup_dir=/mnt/backup
backup_name=`date +%Y%m%d`

rsync ---acls --archive --xattrs --one-file-system --hard-links --human-readable --inplace --numeric-ids --delete --delete-excluded --progress --exclude-from=./rsync-exclude.txt --include-from=./rsync-include.txt / $backup_dir/$backup_name

if [ $? -eq 0 ]; then
  cd $backup_dir
  tar --create --verbose --preserve-permissions --gzip --selinux --acls --xattrs --file=$backup_name.tar.gz $backup_name
  cd $cur_dir
fi
