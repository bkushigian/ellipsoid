TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

.PHONY: all view

all: main.pdf

view:
	    gnome-open main.pdf
clean: 
	rm *.aux *.log

main.pdf : main.tex preamble.tex
	    $(TEX) main.tex


