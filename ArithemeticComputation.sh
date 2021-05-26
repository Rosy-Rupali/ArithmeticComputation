#!/bin/bash -x
echo "Arithmetic Computaion and Sorting"

read -p "Enter first input: " a
read -p "Enter second input: " b
read -p "Enter third input: " c

result1=$(($a+$b*$c))
echo "Result: "$result1
