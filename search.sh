function search {
  if [[ -r $1 ]]
  then echo "\033[31mincorrect number of arguments\033[0m"
    exit 1
  elif [[ -r $2 ]]
  then echo "\033[31mincorrect number of arguments\033[0m"
    exit 1
  fi
   if ! [[ -d $1 ]] ; then
     echo "\033[31mError:not faind dirrectory not found\033[0m"
      exit 1
   elif ! [[ -r $1 ]]
    then
      echo -e "\033[31mYou will not be able to open this diretoria $1\033[0m"
      exit -1
    fi
    grep -r -s "$2" "$1"    
}
