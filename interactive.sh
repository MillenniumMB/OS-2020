functuon Back_To_Menu {
while true
  do echo -e "\033[94menter one of the commands\033[0m:
                a: calculator
                b: search
                c: reverse
                d: strlen
                e: log
                f: exit
                g: help"
        read VAR
        interactive $VAR
    done
}

functuon interactive {
case $1 in
"f")
. ./exit.sh
            exit_
;;
esac
}
