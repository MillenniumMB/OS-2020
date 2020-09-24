function calc {
    if [[ -z $1 || -z $2 || -z $3 || -n $4 ]] && ! [[ "$4" = "interactive" ]]
  then echo -e "\033[31mincorrect number of arguments\033[0m"
  exit -3
  elif ! [[ $2 =~ ^[+-]?[0-9]+$ && $3 =~ ^[+-]?[0-9]+$ ]]
  then
  echo -e "\033[31myou must enter 2 numbers after div/sum/mul/div\033[0m"
  if [[ "$4" = "interactive" ]]
        then return -4
  else
    exit -4
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
        if [[ $3 -eq 0 || $3 -eq -0 || $3 -eq +0 ]]
        then echo -e "\033[31mError division by zero\033[0m"
        if [[ "$4" = "interactive" ]]
            then 
            return -1
        else
            exit -1
        fi
            echo $(($2 / $3))
        ;;
        * )
            echo -e "you should only use these arguments\nUse sum/sub/mul/div"
        ;;
        esac
}
