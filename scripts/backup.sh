#!/bin/bash

BACKUPDIR="/run/media/jonas/js-backup/"


echo starting backup to $BACKUPDIR...
notify-send 'Starting Full System Backup.'
sudo rsync -aAXHv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / $BACKUPDIR
echo backup finished...
notify-send 'Full System Backup Done.'
