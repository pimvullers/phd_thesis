BUILD_DIR=.build

MP_SRC=$(shell ls *.mp) # NOTE: do not use spaces in filenames
MP_MPS=$(MP_SRC:.mp=.mps)

SVG_SRC=$(shell ls *.svg) # NOTE: do not use spaces in filenames
SVG_EPS=$(SVG_SRC:.svg=.eps)
SVG_PDF=$(SVG_SRC:.svg=.pdf)

all: mps svgs

mps: ${MP_MPS}

svgs: ${SVG_EPS} ${SVG_PDF}

%.mps: %.mp
	@mkdir -p ${BUILD_DIR}
	(cd ${BUILD_DIR}; cp ../${<} ./; mpost ${<})
	mv ${BUILD_DIR}/${<}s ./
	@rm -rf ${BUILD_DIR}
	
%.eps: %.svg
	inkscape -E `basename ${<} svg`eps ${<}

%.pdf: %.eps
	epstopdf ${<}

clean: 
	rm -f ${MP_MPS} ${SVG_PDF} ${SVG_EPS} *~

.PHONY: mps svgs clean
