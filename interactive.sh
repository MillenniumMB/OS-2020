function File_Error {
if ! [[ -e $1.sh ]]
  then
    echo -e "\033[31mError not file $1.sh\033[0m"
    return -1
  fi
  if ! [[ -r $1.sh ]]
  then
    echo -e "\033[31mError insufficient rights $1.sh\033[0m"
    return -2
  fi
  return 0
}
function interactive {
case $1 in
"a")
File_Error "cal"
. ./calc.sh

            calc sum 4 5
;;"b")
. ./search.sh
            search
;;
"c")
. ./reverse.sh
            reverse
;;
"d")
. ./strlen.sh
            strlen
;;
"e")
. ./log.sh
            log
;;
"f")
. ./exit.sh
            exit_
;;
"g")
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
