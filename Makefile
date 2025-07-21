all: clean italiano english

italiano: curriculum_it.tex
	latexmk -outdir=./out/ -pdf curriculum_it.tex

english: curriculum_en.tex
	latexmk -outdir=./out/ -pdf curriculum_en.tex

clean:
	rm -rf out/*
