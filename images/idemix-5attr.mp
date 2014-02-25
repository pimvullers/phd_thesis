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

beginfig(4); % 5 attributes proving SLE78

fill (0,-5mm)--
(0cm,0.704timeunit)--(1cm,0.602timeunit)--(2cm,0.476timeunit)--
(3cm,0.399timeunit)--(4cm,0.275timeunit)--(5cm,0.197timeunit)
--(5cm,-5mm)--cycle withcolor 0.8white;

fill (0,-5mm)--
(0cm,0.537timeunit)--(1cm,0.435timeunit)--(2cm,0.313timeunit)--
(3cm,0.235timeunit)--(4cm,0.114timeunit)--(5cm,0.034timeunit)
--(5cm,-5mm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.704timeunit);label.llft(btex {\smallersize 1454} etex, (0cm,0.704timeunit));
draw (1cm,0.602timeunit);label.llft(btex {\smallersize 1352} etex, (1cm,0.602timeunit));
draw (2cm,0.476timeunit);label.llft(btex {\smallersize 1226} etex, (2cm,0.476timeunit));
draw (3cm,0.399timeunit);label.llft(btex {\smallersize 1149} etex, (3cm,0.399timeunit));
draw (4cm,0.275timeunit);label.llft(btex {\smallersize 1025} etex, (4cm,0.275timeunit));
draw (5cm,0.197timeunit);label.llft(btex {\smallersize 947} etex, (5cm,0.197timeunit));

draw (0cm,0.537timeunit);label.llft(btex {\smallersize 1287} etex, (0cm,0.537timeunit));
draw (1cm,0.435timeunit);label.llft(btex {\smallersize 1185} etex, (1cm,0.435timeunit));
draw (2cm,0.313timeunit);label.llft(btex {\smallersize 1063} etex, (2cm,0.313timeunit));
draw (3cm,0.235timeunit);label.llft(btex {\smallersize 985} etex, (3cm,0.235timeunit));
draw (4cm,0.114timeunit);label.llft(btex {\smallersize 864} etex, (4cm,0.114timeunit));
draw (5cm,0.034timeunit);label.llft(btex {\smallersize 784} etex, (5cm,0.034timeunit));


pickup pencircle scaled thin;

drawarrow (0,-5mm)--(5.5cm,-5mm);
draw (0cm,-5mm)--(0cm,-tick-5mm);
draw (1cm,-5mm)--(1cm,-tick-5mm);
draw (2cm,-5mm)--(2cm,-tick-5mm);
draw (3cm,-5mm)--(3cm,-tick-5mm);
draw (4cm,-5mm)--(4cm,-tick-5mm);
draw (5cm,-5mm)--(5cm,-tick-5mm);
label.bot(btex 0 etex, (0cm,-tick-5mm));
label.bot(btex 1 etex, (1cm,-tick-5mm));
label.bot(btex 2 etex, (2cm,-tick-5mm));
label.bot(btex 3 etex, (3cm,-tick-5mm));
label.bot(btex 4 etex, (4cm,-tick-5mm));
label.bot(btex 5 etex, (5cm,-tick-5mm));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (5.5cm,-5mm);

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

endfig; % 5 attributes proving SLE78

end;