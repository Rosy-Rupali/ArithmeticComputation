#!/bin/bash -x
echo "Arithmetic Computaion and Sorting"

declare -A arithmeticOperation

#Taking inputs from the user
read -p "Enter first input: " a
read -p "Enter second input: " b
read -p "Enter third input: " c

#Evaluating the expressions
result1=$(($a+$b*$c))
echo "Result1: "$result1
result2=$(($a*$b+$c))
echo "Result2: "$result2
result3=$(($c+$a/$b))
echo "Result3: "$result3
result4=$(($a%$b+$c))
echo "Result4: "$result4

#Storing the result in Dictionary
arithmeticOperation[result1]=$result1
arithmeticOperation[result2]=$result2
arithmeticOperation[result3]=$result3
arithmeticOperation[result4]=$result4

#Read the Dictionary value in Array
for((i=0; i<${#arithmeticOperation[@]}; i++))
do
	arr[i]=${arithmeticOperation[result$((i+1))]}
done

echo "Array of dictionary values are: "${arr[@]}


#Sorting the result in Descending order
arr1=($(echo ${arr[@]} | tr " " "\n" | sort -nr))
echo "Values in Descending order: "${arr1[@]}


#Sorting the result in Ascending order
arr2=($(echo ${arr[@]} | tr " " "\n" | sort -n))
echo "Values in Ascending order: "${arr2[@]}
