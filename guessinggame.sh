#!/bin/sh
# File: guessinggame.sh

num_files=$(ls | wc -l)

guesser() {
    echo "Guess the number of files in this directory: "
    read userguess

    if [[ $userguess -gt num_files ]]; then
        echo "Your guess is too high"
    else 
        if [[ $userguess -lt num_files ]]; then
            echo "Your guess is too low"
        else
            echo "Your guess is right!"
            echo "There are $num_files files in this directory."
        fi
    fi
}

while [[ userguess -ne num_files ]]; do
    guesser
done
