#!/bin/bash -x
echo "Arithmetic Computaion and Sorting"

read -p "Enter first input: " a
read -p "Enter second input: " b
read -p "Enter third input: " c

result1=$(($a+$b*$c))
echo "Result1: "$result1
result2=$(($a*$b+$c))
echo "Result2: "$result2
result3=$(($c+$a/$b))
echo "Result3: "$result3
result4=$(($a%$b+$c))
echo "Result4: "$result4
