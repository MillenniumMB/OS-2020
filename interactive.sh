function File_Error {
if ! [[ -e $1.sh ]]
  then
    echo -e "\033[31mError not file $1.sh
    you can't use this function\033[0m" >&2
    Back_To_Menu
    return -2
  fi
  if ! [[ -r $1.sh ]]
  then
    echo -e "\033[31mError insufficient rights $1.sh
    you can't use this function\033[0m" >&2
    Back_To_Menu
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
  echo -e "Write a directory"
  read file1
  echo -e "Write a key"
  read key
  . ./search.sh
            search $file1 $key "interactive"
;;
"c")
  File_Error "reverse"
  echo -e "Write a first file"
  read file1
  echo -e "Write a second file"
  read file2
. ./reverse.sh
            reverse $file1 $file2 "interactive"
;;
"d")
  File_Error "strlen"
  echo -e "Write a string"
  read string
  . ./strlen.sh
            strlen $string
;;
"e")
  File_Error "log"
  . ./log.sh
            log "interactive"
;;
"f")
  File_Error "exit"
  echo -e "enter the completion code"
  read code
  . ./exit.sh
            exit_ $code "interactive"
;;
"g")
  File_Error "help"
  echo -e "enter one of the commands to learn more"
  read key
  . ./help.sh
            help $key "interactiv"
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
