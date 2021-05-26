#!/bin/bash -x
echo "Arithmetic Computaion and Sorting"

declare -A arithmeticOperation

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


arithmeticOperation[result1]=$result1
arithmeticOperation[result2]=$result2
arithmeticOperation[result3]=$result3
arithmeticOperation[result4]=$result4


for((i=0; i<${#arithmeticOperation[@]}; i++))
do
	arr[i]=${arithmeticOperation[result$((i+1))]}
done

echo "Array of dictionary values are: "${arr[@]}
