function strlen {
  VAR="$*"
  size=${#VAR}
  echo $VAR
  echo -e "Len: $size"
}
