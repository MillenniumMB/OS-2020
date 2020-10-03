function strlen {
  VAR="$@"
  size=${#VAR}
  let size-=6
  echo $VAR
  echo -e "Len: $size"
}
