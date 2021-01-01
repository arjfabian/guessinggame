all: README.md

README.md: guessinggame.sh
	echo "## The Guessing Game" > README.md
	echo "*by jfabian for the 'The Unix Workbench' course assignment*" >> README.md
	echo "\n**Description:** This program counts the total of files in the current directory (not counting subdirectories) and asks the user to guess this value. The user will know after each try if the guess was too low or too high. The program ends when the guess is correct." >> README.md
	echo -n "\n**Time of creation:** " >> README.md
	date '+%Y/%m/%d %H:%M:%S' >> README.md
	echo -n "\n**Lines of code:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
