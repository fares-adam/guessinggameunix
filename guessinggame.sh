
#!/usr/bin/env bash
# File: guessinggame.sh
dirarray=($(ls -d */))
dircount=${#dirarray[@]}
dirguess=0
# one function
function checkguess {
    # use of an if statement
    if [[ $1 -lt $2 ]]
    then
    echo "echo Too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo Too high"
    fi
}
# Use of a loop
while [ $dirguess -ne $dircount ]
do
echo "Guess the number of files!"
# reading user's input
read dirguess
$(checkguess $dirguess $dircount)
done
echo "You got it right! congratulations"
