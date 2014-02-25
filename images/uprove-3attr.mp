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

beginfig(3);

fill (0,0)--
(0cm,0.653timeunit)--(1cm,0.591timeunit)--(2cm,0.538timeunit)--
(3cm,0.475timeunit)
--(3cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.461timeunit)--(1cm,0.393timeunit)--(2cm,0.334timeunit)--
(3cm,0.266timeunit)
--(3cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.653timeunit);label.llft(btex {\smallersize 653} etex, (0cm,0.653timeunit));
draw (1cm,0.591timeunit);label.llft(btex {\smallersize 591} etex, (1cm,0.591timeunit));
draw (2cm,0.538timeunit);label.llft(btex {\smallersize 538} etex, (2cm,0.538timeunit));
draw (3cm,0.475timeunit);label.llft(btex {\smallersize 475} etex, (3cm,0.475timeunit));

draw (0cm,0.461timeunit);label.llft(btex {\smallersize 461} etex, (0cm,0.461timeunit));
draw (1cm,0.393timeunit);label.llft(btex {\smallersize 393} etex, (1cm,0.393timeunit));
draw (2cm,0.334timeunit);label.llft(btex {\smallersize 334} etex, (2cm,0.334timeunit));
draw (3cm,0.266timeunit);label.llft(btex {\smallersize 266} etex, (3cm,0.266timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(3.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
draw (3cm,0)--(3cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.bot(btex 3 etex, (3cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (3.5cm,0);

drawarrow (0,0)--(0,timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,timeunit+.5cm));

endfig;

end;