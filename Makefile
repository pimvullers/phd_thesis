SOURCE_DIR=$(shell pwd)
BUILD_DIR=.build

MP_SRC=$(shell ls images/*.mp)
MP_MPS=$(MP_SRC:.mp=.mps)
MSC_SRC=$(shell grep -l begin{msc} mscs/*.tex)
MSC_PDF=$(MSC_SRC:.tex=.pdf)
SVG_SRC=$(shell ls images/*.svg)
SVG_PDF=$(SVG_SRC:.svg=.pdf)
IMG=images/*

all: thesis

manuscript: manuscript.pdf

thesis: thesis.pdf

%.pdf: %.tex *.bib *.tex ${MP_MPS} ${MSC_PDF} ${SVG_PDF} ${IMG}
	@mkdir -p ${BUILD_DIR}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	@sed -i 's#{references}#{${SOURCE_DIR}/references}#' .build/bibliography.aux
	(cd ${BUILD_DIR}; bibtex `basename ${<} .tex`)
	(cd ${BUILD_DIR}; makeindex `basename ${<} .tex`)
	pdflatex -output-directory=${BUILD_DIR} ${<}
	pdflatex -output-directory=${BUILD_DIR} ${<}
	mv ${BUILD_DIR}/${@} ./

${MP_MPS}: ${MP_SRC}
	${MAKE} -C images `basename -a ${MP_MPS}`

${MSC_PDF}: ${MSC_SRC}
	${MAKE} -C mscs `basename -a ${MSC_PDF}`

${SVG_PDF}: ${SVG_SRC}
	${MAKE} -C images `basename -a ${SVG_PDF}`

clean:
	${MAKE} -C mscs clean
	${MAKE} -C images clean
	rm -rf ${BUILD_DIR}
	rm -f *.pdf *~

.PHONY: all clean manuscript thesis
