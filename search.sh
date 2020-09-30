#function search {
  #if [[ -z $1 || -z $2 || -n $3 ]] && ! [[ "$3" = "interactive" ]]
  #then echo -e "\033[31mincorrect number of arguments\033[0m" >&2
   # exit -3
  #fi
   #if ! [[ -d $1 ]] ; then
     #echo -e "\033[31mError: directory not found\033[0m" >&2
     #if [[ "$3" = "interactive" ]]
     #   then return -2
    # else
    #    exit -2
   #  fi
   #elif ! [[ -r $1 ]]
    #then
      #echo -e "\033[31mYou will not be able to open this diretoria $1\033[0m" >&2
      #if [[ "$3" = "interactive" ]]
      #  then return -2
     # else
    #    exit -2
   #   fi
  #  fi
 #   grep -r -s "$2" "$1"    
#}
function search {
    if ! [[ -d $1 ]] ; then
      echo -e "Not a directory" >&2
      exit 1
    fi
    if ! [[ -r $1 ]] ; then
      echo -e "You haven't access" >&2
      exit 1
    fi
    grep -r "$2" "$1" 2> /dev/null
}
