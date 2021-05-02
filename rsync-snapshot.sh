#!/bin/bash

# Variables permettant de changer la source et la destination de la sauvegarde
SOURCE="/"
DESTINATION="/var/www/backups/snapshots/"
PARENTDIR="/var/www/backups/"

# Si le repertoire temporaire des snapshots n'existe pas, le creer
if [ ! -d "$DESTINATION" ]; then
        mkdir -p $DESTINATION
fi

# Lancer la synchro
rsync -aAXv --delete --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,$PARENTDIR} $SOURCE $DESTINATION
