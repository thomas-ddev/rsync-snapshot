#!/bin/bash

# Variables permettant de changer la source et la destination de la sauvegarde
SOURCE="/"
DESTINATION="/var/www/backups/snapshots/"
PARENTDIR="/var/www/backups/"

rsync -aAXv --delete --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,$PARENTDIR} $SOURCE $DESTINATION
