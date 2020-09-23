function calc {
    if [[ -z $1 || -z $2 || -r $3 ]]
  then echo -e "\033[31mincorrect number of arguments\033[0m"
  exit 1
  elif ! [[ $2 =~ ^[+-]?[0-9]+$ && $3 =~ ^[+-]?[0-9]+$ ]]
  then
  echo -e "\033[31myou must enter 2 numbers after div/sum/mul/div\033[0m"
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
        if [[ $4 -eq 0 || $4 -eq -0 || $4 -eq +0 ]]
        then
        echo -e "\033[31mError division by zero\033[0m"
        Mat_Error
        fi
            echo $(($2 / $3))
        ;;
        * )
            echo -e "you should only use these arguments\nUse sum/sub/mul/div"
        ;;
        esac
}
