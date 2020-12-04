#!/bin/bash

echo "Welcome.  This is assignment 3 for group 35 which includes Emma Kule, Jennifer Wrigglesworth and Michael Noseworthy."




while true;
do
	echo "Please enter which method you want to use.  M for task 1, P for task 2 or S for task 3: "
	read METHOD

	case $METHOD in

		M | m)
			echo "Task 1"
			#TODO
			read test
			;;

		P | p)
			echo "Task 2"
			#TODO
			;;
		
		S | s)
			echo "Task 3"
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
			done
			fi
			;;
			
		Q | q)
			echo "Thanks for examining our assignment.  Good bye."
			exit
			;;
			
		*)
			echo -n "Wrong sentinel selected.  Please try again or press Q for exit."
			;;
			
	esac
#place while loop ending
done