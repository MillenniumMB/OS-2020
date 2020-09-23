#!/bin/bash
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
  echo ""
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
  echo ""
;;
esac
