#!/bin/bash

answer=$(ls -l | grep ^- | wc -l)

echo "Welcome to the Guessing Game!"
echo ""

function ask_for_number {
        read -p "Tell me, how many files you think there are in this directory? " number
        echo ""
}

while [[ $number -ne $answer ]]; do
        ask_for_number
        if [[ $number -lt $answer ]]; then
                echo "Try with a higher number!"
        elif [[ $number -gt $answer ]]; then
                echo "Try with a lower number!"
        else
                echo "You guessed it! Congratulations! Here are the files:"
                echo ""
                ls -l | grep ^-
                echo ""
                echo "Goodbye!"
        fi