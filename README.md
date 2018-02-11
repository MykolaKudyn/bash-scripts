# bash-scripts

 rsync -aHAXSv --numeric-ids --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} --include={"/dev/null", "/dev/console"} /mnt/tmp/ /run/media/guest/f7d2cf26-19ee-47c0-aa77-66f61a27c533/backup/home-pc/`date +%Y%m%d%H%M`/
