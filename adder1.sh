#!/bin/bash
#dynamically adding any two numbers
read -p "Please enter the first number: " num1
read -p "Please eneter the second number: " num2
sum=$[$num1 + $num2]
#sum=$(($num1 + $num2)) 
echo "The sum of $num1 and $num2 is : $sum"
echo "This operation was done by $(whoami) from $(pwd)" >> /tmp/output.log
