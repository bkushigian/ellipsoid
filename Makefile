TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

.PHONY: all view

all: main

view:
	    gnome-open main.pdf
clean: 
	rm *.aux *.log

.PHONY: main.pdf
main: main.tex
	    $(TEX) main.tex



