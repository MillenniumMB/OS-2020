function help {
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
*)
  echo "calc: the calculator function accepts 3 arguments as input: 1 (sum/sub/mul/div) which corresponds to (+ / - / * / /), 2 the remaining arguments are integers"
  echo "search: enter the name of the directory and the key to search the entire directory"
  echo "reverse: the application writes the contents of the file with the name specified by argument 2 in reverse order to the file with the name passed by argument 3"
  echo "strlen: outputs the number of characters of the entered 2 argument"
  echo "log: enter log to display all errors and information messages in the X. log file"
  echo "exit: terminate the application with a return code of 2 arguments"
  echo "interactive: you can switch to interactive mode. Enter an interactive to do this"
  ;;
esac
}
