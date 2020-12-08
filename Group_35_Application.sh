#!/bin/bash

User1="Emma Kule"
User2="Jennifer Wrigglesworth"
User3="Michael Noseworthy"

echo "Welcome.  This is assignment 3 for group 35 for the course COMP 1223 (Web Development Fundamentals) and assembled by: "
printf "$User1, $User2 and $User3.\n"

while true; #do forever until user enters a false value
do
	echo "Please enter which method you want to use.  Press Q to quit, M for task 1, S for task 2 or P for task 3"
	read METHOD #Tells the program which task to go to

	case $METHOD in

		M | m)
			echo "Task 1: Find the even multiples of any number – the user should specify the multiples of which
number they want to print and how many of them."
			#Bash Script to check whether a number is even or odd
			read -p "Enter your number to test: " NUMBER
			read -p "Enter how many numbers you want to display: " MULTI
			printf "You are testing the number $NUMBER and you want to display $MULTI values.\n"
			echo "Displaying even numbers: "
			INDEX=1 #set to 1 to prevent 0 as a number to test
			while [ $INDEX -lt $NUMBER ]
			do
					if [ $MULTI == 0 ] #Check to see if there are any more numbers to display
					then
					break #End if number of display numbers is finished
					fi
			REMAINDER=$(( $INDEX % 2 )) #Set the remainder to a boolean
				if [ $REMAINDER -eq 0 ] #Check to see if the number is odd or even
				
				then
				echo $INDEX #output number if the number is odd
				MULTI=$(($MULTI-1)) #Tells the program that a number was displayed and deincrement
				fi
				INDEX=$(($INDEX+1)) #increase index for next loop
			done
			echo "Task 1 complete.  Returning to main menu"
			;;
			
		S | s)
			echo "Task 2: Find the terms of any linear sequence given by the rule Un = an + b, where a and b are
integers specified by the user and n is a positive integer, and print them in increasing order (for
example if the user inputs a=3, b=-4, the first few terms that should be printed are -1, 2, 5, 8,
11…)."
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
			echo "Task 2 complete.  Returning to main menu"
			;;

		P | p)
			echo "Task 3: Find the numbers that can be expressed as the product of two nonnegative integers in
succession and print them in increasing order. (For example, 30 is such a number as it can be
written as the product of 5 and 6 (30=5x6), which are two numbers in succession.)"
			#Asking the user for a max value and printing a list of numbers in succession and their products until it reaches the users input.

			echo "Please enter a maximum value:"
			read maxvalue

			#setting variables

			let input=maxvalue
			let  x=1
			let count=0
			let int=0
			let y=0

			#calculates and prints the numbers

			while [ $y -eq 0 ]
      				do
      				int=$(($x *($x + 1)))
      			 	if [ $int -le $maxvalue ]
       				then
               			xx=$(($x+1))
                		echo "$x * $xx = $int"
                		count=$(($count + 1))
                		x=$((x + 1))
        			else
                		y=1
        		fi 
			done

			#prints the count

			echo "Total numbers printed: $count"
			echo "Task 3 complete.  Returning to main menu"
			;;
		
		
			
		Q | q)
			echo "Thanks for examining our assignment.  Good bye."
			exit
			;;
			
		*)
			printf "Wrong sentinel selected.  Please try again or press Q for exit.\n"
			;;
			
	esac #Exit of switch loop
#place while loop ending
done
