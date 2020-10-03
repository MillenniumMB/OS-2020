function strlen {
  VAR="$@"
  size=${#VAR}
  $size-=6
  echo $VAR
  echo -e "Len: $size"
}
