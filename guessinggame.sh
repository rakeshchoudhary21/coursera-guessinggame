echo 'How many files are in the current directory?'
echo 'Please guess a number'
read guess
actualFilesInCurrentDir=`ls -l | grep '^-' | wc -l`
function checkGuess {
	#this function returns, 0 if guess is correct, more than 0 if guess is high, less than 0 if guess is low
	echo $[ $1 - $actualFilesInCurrentDir ]
}


run=true
while ($run)
do
	check=$(checkGuess $guess)
	if [[ $check -eq 0 ]]
	then
		echo 'Congrats you guessed right'
		run=false
	elif [[ $check -gt 0 ]]
	then 
		echo 'Too high... Lets guess again'
		read guess
	else
		echo 'Too low... Lets guess again'
		read guess
	fi
done
