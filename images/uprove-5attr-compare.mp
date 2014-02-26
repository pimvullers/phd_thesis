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

timeunit := 3.5cm;

outputtemplate:="%j.mps";
beginfig(1);

fill (0,0)--
(0cm,0.869timeunit)--(1cm,0.814timeunit)--(2cm,0.764timeunit)--
(3cm,0.708timeunit)--(4cm,0.651timeunit)--(5cm,0.594timeunit)
--(5cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.648timeunit)--(1cm,0.586timeunit)--(2cm,0.530timeunit)--
(3cm,0.469timeunit)--(4cm,0.406timeunit)--(5cm,0.343timeunit)
--(5cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.869timeunit);label.llft(btex {\smallersize 869} etex, (0cm,0.869timeunit));
draw (1cm,0.814timeunit);label.llft(btex {\smallersize 814} etex, (1cm,0.814timeunit));
draw (2cm,0.764timeunit);label.llft(btex {\smallersize 764} etex, (2cm,0.764timeunit));
draw (3cm,0.708timeunit);label.llft(btex {\smallersize 708} etex, (3cm,0.708timeunit));
draw (4cm,0.651timeunit);label.llft(btex {\smallersize 651} etex, (4cm,0.651timeunit));
draw (5cm,0.594timeunit);label.llft(btex {\smallersize 594} etex, (5cm,0.594timeunit));

draw (0cm,0.648timeunit);label.llft(btex {\smallersize 648} etex, (0cm,0.648timeunit));
draw (1cm,0.586timeunit);label.llft(btex {\smallersize 586} etex, (1cm,0.586timeunit));
draw (2cm,0.530timeunit);label.llft(btex {\smallersize 530} etex, (2cm,0.530timeunit));
draw (3cm,0.469timeunit);label.llft(btex {\smallersize 469} etex, (3cm,0.469timeunit));
draw (4cm,0.406timeunit);label.llft(btex {\smallersize 406} etex, (4cm,0.406timeunit));
draw (5cm,0.343timeunit);label.llft(btex {\smallersize 343} etex, (5cm,0.343timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(5.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
draw (3cm,0)--(3cm,-tick);
draw (4cm,0)--(4cm,-tick);
draw (5cm,0)--(5cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.bot(btex 3 etex, (3cm,-tick));
label.bot(btex 4 etex, (4cm,-tick));
label.bot(btex 5 etex, (5cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (5.5cm,0);

drawarrow (0,0)--(0,1.5timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,1.5timeunit+.5cm));

endfig;

end;