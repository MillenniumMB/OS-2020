function calc {
    if [[ -z $1 ]]
  then echo -e "\033[31mincorrect number of arguments\033[0m"
  exit 1
  fi
    case $1 in
    "sum" )
            echo $(($2 + $3))
        ;;
        "sub" )
            echo $(($2 - $3))
        ;;
        "mul" )
            echo $(($2 * $3))
        ;;
        "div" )
            echo $(($2 / $3))
        ;;
        * )
            echo -e "you should only use these arguments\nUse sum/sub/mul/div" >&2
        ;;
        esac
}
