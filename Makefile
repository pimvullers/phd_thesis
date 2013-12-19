SOURCE_DIR=$(shell pwd)
BUILD_DIR=.build

MSC_SRC=$(shell grep -l begin{msc} mscs/*.tex)
MSC_PDF=$(MSC_SRC:.tex=.pdf)
IMG=images/*

all: compact thesis

compact: compact_thesis.pdf

thesis: thesis.pdf

# mscs *.tex *.bib
%.pdf: %.tex *.bib *.tex ${MSC_PDF} ${IMG}
	@mkdir -p ${BUILD_DIR}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	@sed -i 's#{references}#{${SOURCE_DIR}/references}#' .build/bibliography.aux
	(cd ${BUILD_DIR}; bibtex `basename ${<} .tex`)
	pdflatex -output-directory=${BUILD_DIR} ${<}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	mv ${BUILD_DIR}/${@} ./

${MSC_PDF}: ${MSC_SRC}
	${MAKE} -C mscs

clean:
	rm *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.dvi *.ps *.eps

.PHONY: all clean mscs compact thesis
