function strlen {
  if [[ -z $1 || -n $2 ]] && ! [[ "$2" = "interactive" ]]
    then echo -e "\033[31mincorrect number of arguments.\nYou must have 1 argument\033[0m" >&2
    if [[ "$2" = "interactive" || "$3" = "interactive" ]]
        then return -3
    else
        exit -3
    fi
  fi
  VAR="$1"
  size=${#VAR}
  echo -e "Len: $size"
}
