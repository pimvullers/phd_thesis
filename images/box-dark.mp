verbatimtex%&latex
\documentclass{article}
\pagestyle{empty}
\def\smallersize{}
\begin{document}
\footnotesize
etex

outputtemplate:="%j.mps";

beginfig(8); % dark gray box

fill (0,0)--(0,10pt)--(10pt,10pt)--(10pt,0)--cycle withcolor 0.6white;

endfig;

end;
