function reverse {
  if [[ -z $1 || -z $2 ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  elif ! [[ -r $1 || -r $2 ]]
    then echo -e "\033[31you can't use this file\033[0m"
    exit 1
  elif [[ -d $1 || -d $2 ]]
    then echo -e "\033[31merror:it is directory\033[0m"
      exit 1
  elif ! [[ -f $1 ]]
    then echo -e "\033[31file not found\033[0m"
  fi
  if ! [[ -f $2 ]]
    then touch $2
  fi
  tac $1 | rev > $2
}
