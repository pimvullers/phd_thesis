SOURCE_DIR=$(shell pwd)
BUILD_DIR=.build

MP_SRC=$(shell ls images/*.mp)
MP_MPS=$(MP_SRC:.mp=.mps)
MSC_SRC=$(shell grep -l begin{msc} mscs/*.tex)
MSC_PDF=$(MSC_SRC:.tex=.pdf)
SVG_SRC=$(shell ls images/*.svg)
SVG_PDF=$(SVG_SRC:.svg=.pdf)
IMG=images/*

all: compact thesis

compact: compact_thesis.pdf

thesis: thesis.pdf

%.pdf: %.tex *.bib *.tex ${MSC_PDF} ${SVG_PDF} ${MP_MPS} ${IMG}
	@mkdir -p ${BUILD_DIR}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	@sed -i 's#{references}#{${SOURCE_DIR}/references}#' .build/bibliography.aux
	(cd ${BUILD_DIR}; bibtex `basename ${<} .tex`)
	pdflatex -output-directory=${BUILD_DIR} ${<}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	mv ${BUILD_DIR}/${@} ./

${MP_MPS}: ${MP_SRC}
	${MAKE} -C images `basename ${MP_MPS}`

${MSC_PDF}: ${MSC_SRC}
	${MAKE} -C mscs `basename ${MSC_PDF}`

${SVG_PDF}: ${SVG_SRC}
	${MAKE} -C images `basename ${SVG_PDF}`

clean:
	${MAKE} -C mscs clean
	${MAKE} -C images clean
	rm -rf ${BUILD_DIR}
	rm -f *.pdf *~

.PHONY: all clean mscs compact thesis
