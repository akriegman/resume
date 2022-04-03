
all: resume

resume: main.tex
	latexmk -pdf -bibtex

# latexmk -c does not remove everything
clean:
	git clean -Xdf
