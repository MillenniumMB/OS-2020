#!/bin/bash
echo $$>mypid
res=1
operator='+'
sigterm()
{
exit
}
trap 'sigterm' SIGTERM

tail -f input | while true
do
read line
case $line in
'+')
operator='+'
echo "Sum"
;;
'*')
operator='*'
echo "Product"
;;
[0-9]*)
if [[ $operation == '+' ]]
then
let res=$res+$line
else
let res=$res*$line
fi
echo "$operation$line = $res"
;;
*)
echo "ERR"
;;
esac
done
