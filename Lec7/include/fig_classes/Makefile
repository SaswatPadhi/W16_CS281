TEX = pdflatex

FILE = fig_classes

.PHONY: all clean

all: $(FILE).pdf

clean:
	rm -rfv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof \
		    $(FILE).pdf $(FILE).synctex*

$(FILE).pdf: $(FILE).tex
	$(TEX) $(FILE)
	$(TEX) $(FILE)
