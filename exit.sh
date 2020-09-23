function exit_ {
re='^[+-]?[0-9]+$'
if [[ -z $1 ]]
  then
    echo "0"
    exit 0
elif [[ -n $2 ]]
  then
    echo "incorrect number of arguments"
elif ! [[ $1 =~ $re ]]
  then
   echo "error: Not a number" >&2;
   exit 1
else
  exit $1
fi
}
