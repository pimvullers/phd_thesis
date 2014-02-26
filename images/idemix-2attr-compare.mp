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

timeunit := 3.5cm;
outputtemplate:="%j.mps";

beginfig(1); % 2 attributes proving SLE78

fill (0,0cm)--
(0cm,1.099timeunit)--(1cm,0.997timeunit)--(2cm,0.895timeunit)
--(2cm,0cm)--cycle withcolor 0.8white;

fill (0,0cm)--
(0cm,0.969timeunit)--(1cm,0.869timeunit)--(2cm,0.768timeunit)
--(2cm,0cm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,1.099timeunit);label.ulft(btex {\smallersize 1099} etex, (0cm,1.099timeunit));
draw (1cm,0.997timeunit);label.llft(btex {\smallersize 997} etex, (1cm,0.997timeunit));
draw (2cm,0.895timeunit);label.llft(btex {\smallersize 895} etex, (2cm,0.895timeunit));

draw (0cm,0.969timeunit);label.llft(btex {\smallersize 969} etex, (0cm,0.969timeunit));
draw (1cm,0.869timeunit);label.llft(btex {\smallersize 869} etex, (1cm,0.869timeunit));
draw (2cm,0.768timeunit);label.llft(btex {\smallersize 768} etex, (2cm,0.768timeunit));

pickup pencircle scaled thin;

drawarrow (0,0cm)--(2.5cm,0cm);
draw (0cm,0cm)--(0cm,-tick);
draw (1cm,0cm)--(1cm,-tick);
draw (2cm,0cm)--(2cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (2.5cm,0cm);

drawarrow (0,0)--(0,1.25timeunit+.5cm);
draw (0,0)--(-tick,0cm);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,1.25timeunit+.5cm));

endfig; % 2 attributes proving SLE78

end;