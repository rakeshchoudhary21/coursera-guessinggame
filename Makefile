all:
	@echo 'Generating README.md'
	@echo 'Make file was run at:'`date`
	@echo 'Number of lines in guessinggame.sh:'`cat guessinggame.sh | wc -l`

	touch README.md
	echo '## Guessinggame bash project' > README.md
	echo '# Make was run at:'`date` >> README.md
	echo '# Numbe of lines in guessinggame.sh:'`cat guessinggame.sh | wc -l` >> README.md

