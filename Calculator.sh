#!/bin/bash

read -p "Enter the first number, the second number and a sign (+,-,*,/) separated by a space: " numb1 numb2 sign

if [[ -z $numb1 || -z $numb2 || -z $sign ]]; then
    echo "You haven't entered 3 inputs, please try again."
    exit 1
fi

case $sign in
    "+" )
        echo "Adding $numb1 and $numb2 gets you $((numb1 + numb2))" ;;
    "-" )
        if (( numb1 > numb2 )); then
            echo "Subtracting $numb2 from $numb1 gets you $((numb1 - numb2))"
        else
            echo "Subtracting $numb1 from $numb2 gets you $((numb2 - numb1))"
        fi ;;
    "*" )
        echo "Multiplying $numb1 and $numb2 gets you $((numb1 * numb2))" ;;
    "/" )
        if (( numb1 == 0 || numb2 == 0 )); then
            echo "Can't divide by zero"
        else
            if (( numb1 > numb2 )); then
                echo "Dividing $numb1 by $numb2 gets you $((numb1 / numb2))"
            else
                echo "Dividing $numb2 by $numb1 gets you $((numb2 / numb1))"
            fi
        fi ;;
    * )
        echo "Invalid sign. Enter a sign from the following range (+, -, *, /)"
        ;;
esac

