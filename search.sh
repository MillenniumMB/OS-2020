function search {
  if [[ -r $1 ]]
  then echo "incorrect number of arguments"
    exit 1
  elif [[ -r $2 ]]
  then echo "incorrect number of arguments"
    exit 1
  fi
   if ! [[ -d $1 ]] ; then
     echo -e "\033[31mОшибка - такой директории не существует\033[0m"
      noDirectoryError
      exit 1
    fi
}
