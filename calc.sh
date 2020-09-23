function calc {
    if [[ -z $1 || -z $2 || -r $3 ]]
  then echo -e "\033[31mincorrect number of arguments\033[0m"
  exit 1
  elif ! [[ $2 =~ '^-?[0-256]+$' && $3 =~ '^-?[0-256]+$' ]]
  then echo -e "\033[31you must enter 2 numbers after sum/sub/mul/div\033[0m"
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
