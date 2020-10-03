function strlen {
  VAR="$@"
  size=${#VAR}
  if ![$2 = "interactive"]
    then let size-=7
  fi  
  echo $VAR
  echo -e "Len: $size"
}
