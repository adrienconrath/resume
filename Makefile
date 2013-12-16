FILE=resume-adrien-conrath

all: $(FILE).pdf

$(FILE).pdf:
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex

view: $(FILE).pdf
	evince $(FILE).pdf&

clean:
	rm -f *.out *.log *.aux

distclean: clean
	rm $(FILE).pdf
