#!/bin/bash
cd /home/user
dateNow="$(date +%Y-%m-%d)"
todaySec=$(date -d "dateNow" +%s)
dateFiles="$(ls | grep -E "^Backup-" | sort -n | tail -1 | cut -d "-" -f 2,3,4)"
if [ -e "Backup-$dateFiles" ]
then
lastbackupSec="$(date -d "$dateFiles" +%s)"
else
lastbackupSec=0
fi
let dateDiff=($todaySec\-$lastbackupSec)/60/60/24
if [ "$dateDiff" -le 7 ]
then
	echo "Updating backup in directory Backup-$dateFiles. Date: $dateNow" >> backup-report
	cd ~/source
	listInSource="$(ls)"
	cd /home/user/Backup-$dateFiles
	for file in $listInSource
	do
		if [ -f "$file" ]
		then
			source_size=$(stat ~/source/$file -c%s)
			actual_size=$(stat $file -c%s)
				if [[ $source_size -ne $actual_size ]]
				then
					mv $file $file"."$dateNow
					cp ~/source/$file $file
					echo "New version of file $file found. Old version moved to $file.$dateNow" >> $HOME/backup-report
				fi
		else
			cp ~/source/$file $file
			echo "New file "$file" copied" >> $HOME/backup-report
		fi
	done
else
	mkdir "Backup-$dateNow"
	cd ~/source
	listInSource="$(ls)"
	echo "$listInSource"
	for i in $listInSource
	do
		cp -R $i $HOME/Backup-$dateNow
	done
	cd $HOME
	echo "backup created on $dateNow in directory /home/user/source/ Files copied: $listInSource" >> backup-report
fi
