#!/bin/bash
function Error_File {
  if ! [[ -e $1.sh ]]
  then
    echo -e "\033[31mError not file $1.sh\033[0m" >$2
     Error_File "help"
      . ./help.sh
            help
    exit -2
  fi
  if ! [[ -r $1.sh ]]
  then
    echo -e "\033[31mError insufficient rights $1.sh\033[0m" >$2
     Error_File "help"
      . ./help.sh
            help
    exit -2
  fi
  return 0
}
Error_File $1
case $1 in
"calc" )
if ! [[ -z $5 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
    exit -3
  fi
  . ./calc.sh
            calc $2 $3 $4
;;
"search" )
if ! [[ -z $4 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
    exit -3
  fi
  . ./search.sh
            search $2 $3
;;
"reverse" )
if ! [[ -z $4 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit -3
  fi
  echo ""
  . ./reverse.sh
            reverse $2 $3
;;
"strlen" )
#if ! [[ -z $3 ]]
 #   then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
  #  exit -3
  #fi
  if [ $# == 2 ]
	then
		 . ./strlen.sh
            strlen "$@"
	else
		echo echo -e "\033[31mincorrect number of arguments\033[0m" >$2
		exit -3
	fi
;;
"log" )
  if ! [[ -z $2 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
    exit -3
  fi

  . ./log.sh
            log
  
;;
"exit" )
if ! [[ -z $3 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
    exit -3
  fi
  
  . ./exit.sh
            exit_ $2
;;
"help" )
if ! [[ -z $3 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
    exit -3
  fi
 
  . ./help.sh
            help $2
;;
"interactive" )
if ! [[ -z $2 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >$2
    exit -3
  fi

  . ./interactive.sh
            Back_To_Menu
;;
* )

  Error_File "help"
  . ./help.sh
            help
;;
esac
