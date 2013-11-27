SRC= $(shell grep -l begin{msc} *.tex)  # note that spaces in filenames
MSC= $(SRC:.tex=.eps)                   # will cause trouble

mscs:  $(MSC)

%.eps: %.tex
	TEXINPUTS="../tex/msc:../tex/foiltex:" latex -jobname msc-file \
		"\input{msc2pdf.tex}\begin{document}\input{$<}\end{document}"
	dvips -t a2 msc-file.dvi -o
	ps2eps -l -l -f msc-file.ps 
	epstopdf msc-file.eps
	mv msc-file.pdf `basename $< tex`pdf
	mv msc-file.eps `basename $< tex`eps
	rm msc-file.*

clean: 
	rm -f *~ *.log *.aux *.out *.dvi
	rm -f msc-file.*
# careful with the following two 
	rm -f *.pdf
	rm -f *.eps *.ps
