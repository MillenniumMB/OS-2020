#!/bin/bash
function Mat_Error {
    exit -1
}
function checkFile_int {
  if ! [[ -e $1.sh ]]
  then
    echo -e "\033[31mОшибка - нет файла $1.sh"
    return -1
  fi
  if ! [[ -r $1.sh ]]
  then
    echo -e "\033[31mОшибка - недостаточно прав для запуска $1.sh"
    return -2
  fi
  return 0
}
case $1 in
"calc" )
if ! [[ -z $5 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./calc.sh
            calc $2 $3 $4
;;
"search" )
if ! [[ -z $4 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./search.sh
            search $2 $3
;;
"reverse" )
if ! [[ -z $4 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./reverse.sh
            reverse $2 $3
;;
"strlen" )
if ! [[ -z $3 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./strlen.sh
            strlen $2
;;
"log" )
  if ! [[ -z $2 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./log.sh
            log
  
;;
"exit" )
if ! [[ -z $3 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./exit.sh
            exit_ $2
;;
"help" )
if ! [[ -z $3 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./help.sh
            help $2
;;
"interactive" )
if ! [[ -z $2 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  echo ""
  . ./interactive.sh
            interactive
;;
esac
