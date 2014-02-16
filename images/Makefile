BUILD_DIR=.build

MP_SRC=$(shell ls *.mp) # NOTE: do not use spaces in filenames

SVG_SRC=$(shell ls *.svg) # NOTE: do not use spaces in filenames
SVG_EPS=$(SVG_SRC:.svg=.eps)
SVG_PDF=$(SVG_SRC:.svg=.pdf)

all: mps svgs

mps: ${MP_SRC}
	@mkdir -p ${BUILD_DIR}
	(cd ${BUILD_DIR}; mpost ../idemix-graphs.mp)
	(cd ${BUILD_DIR}; mpost ../uprove-graphs.mp)
	mv ${BUILD_DIR}/*.mps ./
	@rm -rf ${BUILD_DIR}

svgs: ${SVG_EPS} ${SVG_PDF}

%.eps: %.svg
	inkscape -E `basename ${<} svg`eps ${<}

%.pdf: %.eps
	epstopdf ${<}

clean: 
	rm -f ${SVG_PDF} ${SVG_EPS} *~

.PHONY: svgs clean
