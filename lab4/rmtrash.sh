#!/bin/bash
scriptName=$1
homeTrash=$Home/.trash
homeLog=$Home/trash.log
if [[ $# != 1 ]]; then
	echo "ERROR, enter one argument"
	exit 1
fi
if [[ ! -f $scriptName ]]; then
	echo "ERROR, this file is not exist"
	exit 1
fi
if [ -d $homeTrash ]; then :
else
	mkdir $homeTrash
fi
curTrashFile=$(date "+%s")
ln $scriptName "$homeTrash/$curTrashFile"
rm $scriptName
if [ -e $homeLog ];
then:
else
	touch $homeLog
fi

echo "$PWD/$scriptName:$curTrashFile" >> $homeLog
