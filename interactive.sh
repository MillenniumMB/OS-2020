function File_Error {
if ! [[ -e $1.sh ]]
  then
    echo -e "\033[31mError not file $1.sh
    you can't use this function\033[0m"
    return -1
  fi
  if ! [[ -r $1.sh ]]
  then
    echo -e "\033[31mError insufficient rights $1.sh
    you can't use this function\033[0m"
    return -2
  fi
  return 0
}
function interactive {
case $1 in
"a")
File_Error "calc"
echo -e "Write the sum command sum/sub/mul/div"
read command
echo -e "Write the first number"
read number1
echo -e "Write the second number"
read number2
. ./calc.sh

            calc $command $number1 $number2 "interactive"
;;"b")
File_Error "search"
. ./search.sh
            search
;;
"c")
File_Error "reverse"
. ./reverse.sh
            reverse
;;
"d")
File_Error "strlen"
. ./strlen.sh
            strlen
;;
"e")
File_Error "log"
. ./log.sh
            log
;;
"f")
File_Error "exit"
. ./exit.sh
            exit_
;;
"g")
File_Error "help"
. ./help.sh
            help
;;
esac
return 0
}
function Back_To_Menu {
while true
  do echo -e "\033[94m  Enter one of the commands:
                a: calculator
                b: search
                c: reverse
                d: strlen
                e: log
                f: exit
                g: help\033[0m"
        read VAR
        interactive $VAR
    done
}
