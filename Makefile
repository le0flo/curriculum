all: italiano english

italiano: curriculum_it.tex
	latexmk -pdf curriculum_it.tex

english: curriculum_en.tex
	latexmk -pdf curriculum_en.tex

clean:
	rm -f *.log *.out *.pdf *.fls *.fdb* *.aux
