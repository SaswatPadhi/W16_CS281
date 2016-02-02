TEX = pdflatex -interaction nonstopmode -halt-on-error -file-line-error
BIB = bibtex

SPELL = aspell --lang=en --mode=tex check

FILE = lec7

DEPEND_DIRS = include/fig_classes/

.PHONY: clean all

all: make_depends $(FILE).pdf

make_depends:
	for DDIR in $(DEPEND_DIRS); do (cd $$DDIR && make all); done


clean: clean_depends
	rm -rfv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof \
		    $(FILE).pdf $(FILE).synctex*

clean_depends:
	for DDIR in $(DEPEND_DIRS); do (cd $$DDIR && make clean); done


spell:
	for DDIR in $(DEPEND_DIRS); do (cd $$DDIR && make spell || true); done
	$(SPELL) *.tex


$(FILE).pdf: $(FILE).tex $(FILE).bbl
	$(TEX) $(FILE)
	$(TEX) $(FILE)

$(FILE).bbl: $(FILE).tex $(FILE).bib
	$(TEX) $(FILE)
	$(BIB) $(FILE)
