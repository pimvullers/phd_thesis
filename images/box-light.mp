verbatimtex%&latex
\documentclass{article}
\pagestyle{empty}
\def\smallersize{}
\begin{document}
\footnotesize
etex

thin := .2pt;
thick := 2pt;
tick := 1mm;
break := 1.5mm;

timeunit := 5.0cm;
outputtemplate:="%j.mps";

beginfig(7); % light gray box

fill (0,0)--(0,10pt)--(10pt,10pt)--(10pt,0)--cycle withcolor 0.8white;

endfig;

end;
