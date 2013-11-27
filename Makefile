all: compact_thesis thesis

compact_thesis: mscs
	pdflatex compact_thesis
	bibtex compact_thesis
	pdflatex compact_thesis
	pdflatex compact_thesis

thesis: mscs 
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

mscs: mscs/*.tex
	${MAKE} -C mscs

clean:
	rm *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.dvi *.ps *.eps
