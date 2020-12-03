#!/bin/bash

@echo test

method = 'M'

echo -n "Enter the name of a country: "
read method

echo -n "The official language of $method is "

case $method in
S | s)
read -p "Enter value for a " a
read -p "Enter value for b " b
read -p "Enter value for sequence " n
if [[ n -le 0 ]]
then
echo "ERROR- sequence must be greater than 0"
else
for ((i=1; i<=n; i++))
do
x=$(($i * $a))
w=$(($x + $b))
echo $w
;;
  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;
esac



done
fi 
