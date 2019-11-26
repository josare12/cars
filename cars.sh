#! /bin/bash
# cars.sh
# Jose Arellano



quit=0

while [ $quit -eq  0 ]
do	
	echo "Type 1 to enter a new car, type 2 to display the list of cars, and type 3 to quit."
	read choice

	case  $choice in   
		"1") echo "What is the year?";read year
		echo "what is the make?"; read make
		echo "what is the model?"; read model
		echo  $year:$make:$model >> My_old_cars.txt;;
		"2") sort My_old_cars.txt ;;	
		"3") echo "Thanks for playing!"
			quit=1
			rm My_old_cars.txt

	esac
done			

