NumberOfFiles=$(ls | wc -l)    
GuessIsTrue=1  
function Welcome() {
printf "Type in your first guess, and press ENTER.\n"
read UsersGuess
}

function ProcessInput() {
while [[ ${GuessIsTrue} != 0 ]]
do
if [[ ${UsersGuess} -lt ${NumberOfFiles} ]];
then
	printf "Error! Type a higher number!\n"
	GuessIsTrue=1
	read UsersGuess
elif [[ ${UsersGuess} -gt ${NumberOfFiles} ]];
then
	printf "Error Try a lower number!\n"
	GuessIsTrue=1
	read UsersGuess
else
	printf "You got it! There are ${NumberOfFiles} in the current directory!\n"
	GuessIsTrue=0
fi
done
}

Welcome
ProcessInput
