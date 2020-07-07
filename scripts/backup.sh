# backup script that generates daily / weekly / monthly backups
# this checks if the backup location is available, i.e., you can 
# use this with an external disk.
# put this in /etc/cron.hourly
# author: Jonas Stehli

# set some global variables
BACKUP_MOUNTPOINT="/run/media/jonas/js-backup"
CURRENTDATE=`date +"%Y-%m-%d %T"`
X_USER="jonas"
X_USER_ID="1000"

# notify function
notify () {
    sudo -u $X_USER DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$X_USER_ID/bus notify-send "${2:-BACKUP}" "$1"
}


# check that disk is mounted
if [ ! -d "$BACKUP_MOUNTPOINT" ]; then
    notify "Backup [$frequency] failed: destination not found."
    exit 1
fi

frequency=$1
target_directory=$BACKUP_MOUNTPOINT"/"$frequency
logfile=$target_directory"/log_backup_"$frequency".txt"
backup_directory=$target_directory/"backup_data"

if [ ! -d "$target_directory" ]; then
    mkdir $target_directory
fi
if [ ! -f $logfile ]; then
    touch $logfile
fi
if [ ! -d $backup_directory ]; then
    mkdir $backup_directory
fi

notify "$(echo -e "Starting full system backup [$frequency] to: $backup_directory")"

logstr=$CURRENTDATE"   Starting "$frequency" backup"
echo $logstr >> $logfile


sudo rsync -aAXHv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/.snapshots/*"} / $backup_directory

logstr=$CURRENTDATE"   "$frequency" backup finished."
echo $logstr >> $logfile
notify "Full system backup done [$frequency]."


exit 0
