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

beginfig(1); % 2 attributes proving SLE78

fill (0,-0.5cm)--
(0cm,0.349timeunit)--(1cm,0.247timeunit)--(2cm,0.145timeunit)
--(2cm,-0.5cm)--cycle withcolor 0.8white;

fill (0,-0.5cm)--
(0cm,0.219timeunit)--(1cm,0.119timeunit)--(2cm,0.018timeunit)
--(2cm,-0.5cm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.349timeunit);label.llft(btex {\smallersize 1.099} etex, (0cm,0.349timeunit));
draw (1cm,0.247timeunit);label.llft(btex {\smallersize 0.997} etex, (1cm,0.247timeunit));
draw (2cm,0.145timeunit);label.llft(btex {\smallersize 0.895} etex, (2cm,0.145timeunit));

draw (0cm,0.219timeunit);label.llft(btex {\smallersize 0.969} etex, (0cm,0.219timeunit));
draw (1cm,0.119timeunit);label.llft(btex {\smallersize 0.869} etex, (1cm,0.119timeunit));
draw (2cm,0.018timeunit);label.llft(btex {\smallersize 0.768} etex, (2cm,0.018timeunit));

pickup pencircle scaled thin;

drawarrow (0,-0.5cm)--(2.5cm,-0.5cm);
draw (0cm,-0.5cm)--(0cm,-tick-0.5cm);
draw (1cm,-0.5cm)--(1cm,-tick-0.5cm);
draw (2cm,-0.5cm)--(2cm,-tick-0.5cm);
label.bot(btex 0 etex, (0cm,-tick-0.5cm));
label.bot(btex 1 etex, (1cm,-tick-0.5cm));
label.bot(btex 2 etex, (2cm,-tick-0.5cm));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (2.5cm,-0.5cm);

fill (0,-0.15cm)--(-break,-0.225cm)--(break,-0.275cm)--cycle withcolor 0.6white;
fill (0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--cycle withcolor white;
draw (0,-0.5cm)--(0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--(0,-0.15cm)--(0,0);

drawarrow (0,0)--(0,0.75timeunit+.25cm);
draw (0,-0.5cm)--(-tick,-0.5cm);
draw (0,0)--(-tick,0);
draw (0,0.75timeunit)--(-tick,0.75timeunit);
label.lft(btex 0 etex, (-tick,-0.5cm));
label.lft(btex 0.75s etex, (-tick,0));
label.lft(btex 1.5s etex, (-tick,0.75timeunit));
label.rt(btex time etex, (0,0.75timeunit+.25cm));

endfig; % 2 attributes proving SLE78

end;
