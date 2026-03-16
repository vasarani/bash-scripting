#!/bin/bash

num1=100
num2=200
sum=$(($num1+$num2))

echo "Sum is: $sum"

#Array
fruits=("Apple" "Banana" "pomogranate")
echo "fruits are ${fruits[@]}"
echo "The first fruit is: ${fruits[0]}"
echo "The second fruit is: ${fruits[1]}"
echo "The third fruite is: ${fruits[2]}"
