function strlen {
  VAR="$@"
  size=${#VAR}-6
  echo $VAR
  echo -e "Len: $size"
}
