#!/bin/sh

val=`expr 15 % 2`
echo "Total value : $val"

a=100
b=4

v=$b

echo $v

echo `expr [ $a == $b ]`