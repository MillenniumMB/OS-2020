function help {
case $1 in
"calc" )
echo "the calculator function accepts 3 arguments as input: 1 (sum/sub/mul/div) which corresponds to (+ / - / * / /), 2 the remaining arguments are integers"
;;
"search" )
echo ""
;;
"reverse" ) 
echo "the application writes the contents of the file with the name specified by argument 2 in reverse order to the file with the name passed by argument 3"
;;
"strlen" )
echo "outputs the number of characters of the entered 2 argument"
;;
"log" )
echo ""
;;
"exit" )
echo "terminate the application with a return code of 2 arguments"
;;
"interactive" )
echo ""
;;
esac
}
