#!/bin/bash -e


#url to download from
sqlfile="XXXXXX.sql"
url="http://WEBSITE/$sqlfile"
foldername="db-backups"
now=`date +"%m_%d_%Y"`
oldurl="http://OLD_URL"
newurl="http://NEW_URL"

if curl --output /dev/null --silent --head --fail "$url"; then
	#export file exists - lets replace the database

	#first lets be safe and create a backup of the current one
	echo "Backing up current staging database ..."

	if [ ! -d $foldername ]; then
		mkdir $foldername
	fi

	#move into the install
	cd ./htdocs

	#create the backup
	wp db export dev_backup_$now.sql

	#move the backup to the folder
	mv dev_backup_$now.sql ../db-backups

	#download the latest export from the site
	curl -O "$url"
	echo 'Importing downloaded database ... '
	#dump the current database
	wp db reset --yes
	#import the one we just downloaded
	wp db import $sqlfile
	#replace the url strings
	wp search-replace $oldurl $newurl
else
  echo 'Datatbase not available or was not downloaded. No changes made'
fi
