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

beginfig(4);

fill (0,0)--
(0cm,0.550timeunit)--(1cm,0.487timeunit)--(2cm,0.433timeunit)
--(2cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.372timeunit)--(1cm,0.304timeunit)--(2cm,0.245timeunit)
--(2cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.550timeunit);label.llft(btex {\smallersize 550} etex, (0cm,0.550timeunit));
draw (1cm,0.487timeunit);label.llft(btex {\smallersize 487} etex, (1cm,0.487timeunit));
draw (2cm,0.433timeunit);label.llft(btex {\smallersize 433} etex, (2cm,0.433timeunit));

draw (0cm,0.372timeunit);label.llft(btex {\smallersize 372} etex, (0cm,0.372timeunit));
draw (1cm,0.304timeunit);label.llft(btex {\smallersize 304} etex, (1cm,0.304timeunit));
draw (2cm,0.245timeunit);label.llft(btex {\smallersize 245} etex, (2cm,0.245timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(2.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (2.5cm,0);

drawarrow (0,0)--(0,1.25timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,1.25timeunit+.5cm));

endfig;

end;