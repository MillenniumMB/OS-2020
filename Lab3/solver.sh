echo $$ > mypid
res=1
operation="+"
sigterm()
{
echo "QUIT"
exit
}
user1()
{
operation="+"
}
user2()
{
operation="*"
}
trap 'sigterm' SIGTERM
trap 'user1' USR1
trap 'user2' USR2
while true
do
case $operation in
"+")
let res=$res+2
;;
"*")
let res=$res*2
;;
esac
echo $res
sleep 1
done
