#!/bin/bash
# cars.sh
# Jess Bermudes

echo "Options: "
echo "1: Enter a new car"
echo "2: List cars"
echo "3: Quit"
read -r -p "Enter selection: " CHOICE

while [[ $CHOICE -ne 3 ]]
do
	case $CHOICE in
		"1")
			read -r -p "Year: " YEAR
			read -r -p "Make: " MAKE
			read -r -p "Model: " MODEL
			COMBINED="$YEAR:$MAKE:$MODEL"
			echo "$COMBINED" >> My_old_cars
			;;
		
		"2")
			sort My_old_cars
			;;
	esac
	echo "Options: "
	echo "1: Enter a new car"
	echo "2: List cars"
	echo "3: Quit"
	read -r -p "Enter selection: " CHOICE
done

echo "Goodbye."
