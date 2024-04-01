
#!/bin/bash
#This script will help you add two numbers passed via command line arguments
num1=$1
num2=$2
name=$3
echo "welcome to Etech, $name!!!"
sum=$[$num1 + $num2]
echo "The sum of $num1 and $num2 is :$sum"
