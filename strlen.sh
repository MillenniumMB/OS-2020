function strlen {
  if [[ -z $1 ]]
    then echo -e "\033[31mincorrect number of arguments.\nYou must have 1 argument\033[0m"
    exit 1
  elif [[ -n $2 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
  VAR1 = "$1"
  echo VAR1
  echo ${#VAR1}
}
