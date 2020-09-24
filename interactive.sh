function interactive {
echo $1
case $1 in
"f")
echo $1
. ./exit.sh
            exit_ 0
            exit 0
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
        echo $VAR
        interactive $VAR
    done
      return 0
}
