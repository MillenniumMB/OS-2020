#!bin/bash
function calculator {
        if [[ $2 =~ "^[0-9]+([.][0-9]+)?$" ]] ; then
            echo "3 parameter is not a number" >&2
        elif [[ $3 =~ "^[0-9]+([.][0-9]+)?$" ]] ; then
            echo "4 parameter is not a number" >&2
        else
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
        fi

}
