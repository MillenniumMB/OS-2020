#!/bin/bash
case $1 in
"calc" )
  echo ""
  . ./calculator.sh
            calc $2 $3 $4
;;
"search" )
  echo ""
;;
"reverse" )
  echo ""
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
