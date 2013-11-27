SOURCE_DIR=$(shell pwd)
BUILD_DIR=.build

all: compact thesis

compact: compact_thesis.pdf

thesis: thesis.pdf

%.pdf: %.tex mscs *.tex *.bib
	@mkdir -p ${BUILD_DIR}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	@sed -i 's#{references}#{${SOURCE_DIR}/references}#' .build/bibliography.aux
	(cd ${BUILD_DIR}; bibtex `basename ${<} .tex`)
	pdflatex -output-directory=${BUILD_DIR} ${<}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	mv ${BUILD_DIR}/${@} ./

mscs:
	${MAKE} -C mscs

clean:
	rm *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.dvi *.ps *.eps

.PHONY: all clean mscs compact thesis
