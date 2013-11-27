BUILD_NAME=msc-file
BUILD_DIR=.build
BUILD_FILE=${BUILD_DIR}/${BUILD_NAME}

SRC=$(shell grep -l begin{msc} *.tex) # NOTE: do not use spaces in filenames
EPS=$(SRC:.tex=.eps)
PDF=$(SRC:.tex=.pdf)


mscs: ${EPS} ${PDF}

%.eps: %.tex
	@mkdir -p ${BUILD_DIR}
	TEXINPUTS="../tex/msc:../tex/foiltex:" latex \
		-jobname ${BUILD_NAME} -output-directory ${BUILD_DIR} \
		"\input{msc2pdf.tex}\begin{document}\input{$<}\end{document}"
	dvips -t a2 ${BUILD_FILE}.dvi -o ${BUILD_FILE}.ps
	ps2eps -l -l -f ${BUILD_FILE}.ps 
	mv ${BUILD_FILE}.eps `basename $< tex`eps
	rm -rf ${BUILD_DIR}

%.pdf: %.eps
	epstopdf ${<}

clean: 
	rm -f *.pdf *.eps

.PHONY: mscs clean
