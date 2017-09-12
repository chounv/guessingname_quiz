readme.md: guessinggame.sh
	touch README.md
	echo "# THE GUESSING GAME\n\n" > README.md
	echo "## Some Guessing Game Stats:\n" >> README.md
	echo "- Lines of code in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "\n- Make was last run on:" >> README.md
date -R >> README.md
