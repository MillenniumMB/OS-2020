function interactive {
case $1 in
"f")
. ./exit.sh
            exit_ 0
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
