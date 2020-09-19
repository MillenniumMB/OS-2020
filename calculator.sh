function calc {
        case $2 in
        "sum" )
            echo $(($3 + $4))
        ;;
        "sub" )
            echo $(($3 - $4))
        ;;
        "mul" )
            echo $(($3 * $4))
        ;;
        "div" )
            echo $(($3 / $4))
        ;;
        * )
            echo -e "you should only use these arguments\nUse sum/sub/mul/div" >&2
        ;;
        esac
}
