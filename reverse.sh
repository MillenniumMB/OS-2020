function reverse {
  if [[ -z $1 || -z $2 || -n $3]] && ! [[ "$3" = "interactive" ]]
    then echo -e "\033[31mincorrect number of arguments\033[0m"
    exit 1
  elif ! [[ -r $1 || -r $2 ]]
    then echo -e "\033[31you can't use this file\033[0m"
    if [[ "$3" = "interactive" ]]
        then return -2
    else
        exit -2
    fi
  elif [[ -d $1 || -d $2 ]]
    then echo -e "\033[31merror:it is directory\033[0m"
       if [[ "$3" = "interactive" ]]
        then return -2
    else
        exit -2
    fi 
  elif ! [[ -f $1 ]]
    then echo -e "\033[31file not found\033[0m"
     if [[ "$3" = "interactive" ]]
        then return -2
    else
        exit -2
    fi 
  fi
  if ! [[ -f $2 ]]
    then touch $2
  fi
  tac $1 | rev > $2
}
