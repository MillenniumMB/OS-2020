function search {
  if [[ -r $1 || -r $2 ]] then
    echo "incorrect number of arguments"
    exit 1
  fi

}
