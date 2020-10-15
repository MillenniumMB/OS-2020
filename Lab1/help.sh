function help {
 if [[ -n $2 ]] && ! [[ "$2" = "interactiv" ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m" >&2
  exit -3
  fi
case $1 in
"calc" )
  echo "the calculator function accepts 3 arguments as input: 1 (sum/sub/mul/div) which corresponds to (+ / - / * / /), 2 the remaining arguments are integers"
;;
"search" )
  echo "enter the name of the directory and the key to search the entire directory"
;;
"reverse" ) 
  echo "the application writes the contents of the file with the name specified by argument 2 in reverse order to the file with the name passed by argument 3"
;;
"strlen" )
  echo "outputs the number of characters of the entered 2 argument"
;;
"log" )
  echo "enter log to display all errors and information messages in the X. log file"
;;
"exit" )
  echo "terminate the application with a return code of 2 arguments"
;;
"interactive" )
  echo "you can switch to interactive mode. Enter an interactive to do this"
;;
"exit code")
  echo " -1: mathematical error
  -2: file error
  -3: incorrect number of arguments
  -4: type mismatch"
;;
*)
  echo "calc: the calculator function accepts 3 arguments as input: 1 (sum/sub/mul/div) which corresponds to (+ / - / * / /), 2 the remaining arguments are integers"
  echo "search: enter the name of the directory and the key to search the entire directory"
  echo "reverse: the application writes the contents of the file with the name specified by argument 2 in reverse order to the file with the name passed by argument 3"
  echo "strlen: outputs the number of characters of the entered 2 argument"
  echo "log: enter log to display all errors and information messages in the X. log file"
  echo "exit: terminate the application with a return code of 2 arguments"
  echo "interactive: you can switch to interactive mode. Enter an interactive to do this"
  echo "exit code: output error output instructions"
  ;;
esac
}
