function strlen {
  if [[ -z $1 || -n $2 ]] && ! [[ "$2" = "interactive" ]]
    then echo -e "\033[31mincorrect number of arguments.\nYou must have 1 argument\033[0m"
    exit -3
  fi
  VAR="$1"
  echo -e "Len: "${#VAR}
}
