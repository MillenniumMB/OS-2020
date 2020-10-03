function strlen {
  VAR="$@"
  size=${#VAR}
  if [ "$2" != "interactive" ]
    then let size-=7
  else
    then let size-=12
  fi  
  echo $VAR
  echo -e "Len: $size"
}
