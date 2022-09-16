
all: resume
	xdg-open main.pdf

resume: main.tex clean
	latexmk -pdf -bibtex

install:
	# sudoe is an alias I have that preserves my path with sudo
	sudoe texliveonfly main.tex

fmt:
	latexindent -w main.tex

# latexmk -c does not remove everything
clean:
	git clean -Xdf
	rm main.pdf -f
