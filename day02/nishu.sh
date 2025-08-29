#!/bin/bash

#Hogwards house distribution
echo "                 WELCOME TO Hogwarts School of Witchcraft and Wizardry "
read -p "Enter Magician name: " username

echo -e "                            Hello $username\n                Now SORTING HAT will allot a house best suitable for you "

read -p "Which is your favourite trait: " trait

if [[ "$trait" == "Brave" || "$trait" == "Courage" || "$trait" == "Chivalry" ]]; then
  echo -e "                          $username gets Gryffindor\n                 Prof. Minerva McGonagall giving you a smile"
elif [[ "$trait" == "Intelligence" || "$trait" == "Creative" || "$trait" == "Passionate" ]]; then
  echo -e "                          $username gets Ravenclaw\n                 Prof. Quirinus Quirrell's getting nervous"
elif [[ "$trait" == "Loyalty" || "$trait" == "Hardworking" || "$trait" == "Patience" ]]; then
  echo -e "                          $username gets Hufflepuff\n                 Prof. Pomona Sprout's clapping for you"
else
  echo -e "                          $username gets Slytherin\n                 Prof. Severus Snape giving you a stern look"
fi
