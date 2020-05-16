#!/bin/bash
echo “Please pick an integer between 1 and 10.”
read guess
number=0
while [ “$number” -le 1 ]
do
number=$RANDOM
let “number %= 11 ”
done

if [ $guess -eq $number ]
then
echo “You win!”
else
echo “You suck. The number was $number.”
fi

exit
