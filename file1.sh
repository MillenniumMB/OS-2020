#!/bin/bash
case $1 in
"calc" )
  echo ""
  . ./calc.sh
            calc $2 $3 $4
;;
"search" )
  echo ""
  . ./search.sh
            search $2 $3
;;
"reverse" )
  echo ""
  . ./reverse.sh
            reverse $2 $3
;;
"strlen" )
  echo ""
;;
"log" )
  echo ""
;;
"exit" )
  echo ""
  . ./exit.sh
            exit_ $2
;;
"help" )
  echo ""
  . ./help.sh
            help $2
;;
"interactive" )
  echo ""
;;
esac
