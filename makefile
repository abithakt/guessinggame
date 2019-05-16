all: README.md

README.md:
	touch README.md
	echo "# Guessing game for Unix Workbench" >> README.md
	echo >> README.md
	echo "The \`Makefile\` was run on $(shell date)" >> README.md
	echo >> README.md
	echo "There are $(shell cat guessinggame.sh | wc -l) lines in \`guessinggame.sh\`." >> README.md

