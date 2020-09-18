#!bin/bash

if [[ $1 = "sum" ]] ; then
     echo $(($2 + $3))
elif [[ $1 = "sub" ]] ; then
     echo $(($2 - $3))
elif [[ $1 = "mul" ]] ; then
        echo $(($2 * $3))
elif [[ $1 = "div" ]] ; then
      echo $(($2 / $3))
else
       echo -e "No such command for calculator\nUse sum/sub/mul/div" >&2
fi
