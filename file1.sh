#!/bin/bash
case $1 in
"calc" )
  echo ""
  . ./calculator.sh
            calculator $2 $3 $4
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
