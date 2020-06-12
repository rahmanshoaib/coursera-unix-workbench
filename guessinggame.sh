#!/usr/bin/env bash

#read the number of files in the directory and store in filesindirectory
filesindirectory=$(ls | wc -l)

#welcome user to the guessign game
echo "Welcome to guess game"
echo "Guess the number files in the directory"

#function to play the guessing game
function guessing_game {

	#read user guess
	read number

	#check if user guess is correct or less or more
	if [[ $number -eq $filesindirectory ]]
	then	echo "congrats!! Your guess is correct!"
	else if [[ $number -gt $filesindirectory ]]
		then	echo "Guess is too high try"
			echo "Try again"
			guessing_game
		else	echo "Guess is less"
			echo "Try again"
			guessing_game
		fi
	fi
}
#calling the function
guessing_game
