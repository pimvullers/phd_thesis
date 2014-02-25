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

beginfig(2); % 3 attributes proving SLE78

fill (0,-5mm)--
(0cm,0.469timeunit)--(1cm,0.365timeunit)--(2cm,0.263timeunit)--
(3cm,0.162timeunit)--(3cm,-5mm)--cycle withcolor 0.8white;

fill (0,-5mm)--
(0cm,0.327timeunit)--(1cm,0.224timeunit)--(2cm,0.123timeunit)--
(3cm,0.024timeunit)--(3cm,-5mm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.469timeunit);label.llft(btex {\smallersize 1219} etex, (0cm,0.469timeunit));
draw (1cm,0.365timeunit);label.llft(btex {\smallersize 1115} etex, (1cm,0.365timeunit));
draw (2cm,0.263timeunit);label.llft(btex {\smallersize 1013} etex, (2cm,0.263timeunit));
draw (3cm,0.162timeunit);label.llft(btex {\smallersize 912} etex, (3cm,0.162timeunit));

draw (0cm,0.327timeunit);label.llft(btex {\smallersize 1077} etex, (0cm,0.327timeunit));
draw (1cm,0.224timeunit);label.llft(btex {\smallersize 974} etex, (1cm,0.224timeunit));
draw (2cm,0.123timeunit);label.llft(btex {\smallersize 873} etex, (2cm,0.123timeunit));
draw (3cm,0.024timeunit);label.llft(btex {\smallersize 774} etex, (3cm,0.024timeunit));


pickup pencircle scaled thin;

drawarrow (0,-5mm)--(3.5cm,-5mm);
draw (0cm,-5mm)--(0cm,-tick-5mm);
draw (1cm,-5mm)--(1cm,-tick-5mm);
draw (2cm,-5mm)--(2cm,-tick-5mm);
draw (3cm,-5mm)--(3cm,-tick-5mm);
label.bot(btex 0 etex, (0cm,-tick-5mm));
label.bot(btex 1 etex, (1cm,-tick-5mm));
label.bot(btex 2 etex, (2cm,-tick-5mm));
label.bot(btex 3 etex, (3cm,-tick-5mm));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (3.5cm,-5mm);

fill (0,-0.15cm)--(-break,-0.225cm)--(break,-0.275cm)--cycle withcolor 0.6white;
fill (0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--cycle withcolor white;
draw (0,-0.5cm)--(0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--(0,-0.15cm)--(0,0);

drawarrow (0,0)--(0,0.75timeunit+.25cm);
draw (0,-5mm)--(-tick,-5mm);
draw (0,0)--(-tick,0);
draw (0,0.75timeunit)--(-tick,0.75timeunit);
label.lft(btex 0 etex, (-tick,-5mm));
label.lft(btex 750 etex, (-tick,0));
label.lft(btex 1500 etex, (-tick,0.75timeunit));
label.rt(btex time (ms) etex, (0,0.75timeunit+.25cm));

endfig; % 3 attributes proving SLE78

end;