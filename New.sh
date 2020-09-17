echo "enter first value:"
read x
echo "enter second value"
read y
echo "enter action symbol"
read act
 
case $act in
"sum") echo " $x + $y ="  $(expr $y + $x);;
"sub") echo "$x - $y ="   $(expr $x - $y);;
"mul") if [ $y -eq 0 ]; then
       echo "error: delimiter by zero";
     else
       echo " $x / $y =" $(expr  $x / $y);
     fi;;
"div") echo " $x * $y =" $(expr  $x \* $y);;
esac
