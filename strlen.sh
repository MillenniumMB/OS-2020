function strlen {
  VAR="$@"
  size=${#VAR}
  echo -e "Len: $size"
}
