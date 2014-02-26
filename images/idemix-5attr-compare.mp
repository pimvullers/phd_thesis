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

beginfig(4); % 5 attributes proving SLE78

fill (0,0mm)--
(0cm,1.454timeunit)--(1cm,1.352timeunit)--(2cm,1.226timeunit)--
(3cm,1.149timeunit)--(4cm,1.025timeunit)--(5cm,0.947timeunit)
--(5cm,0mm)--cycle withcolor 0.8white;

fill (0,0mm)--
(0cm,1.287timeunit)--(1cm,1.185timeunit)--(2cm,1.063timeunit)--
(3cm,0.985timeunit)--(4cm,0.864timeunit)--(5cm,0.784timeunit)
--(5cm,0mm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,1.454timeunit);label.llft(btex {\smallersize 1454} etex, (0cm,1.454timeunit));
draw (1cm,1.352timeunit);label.llft(btex {\smallersize 1352} etex, (1cm,1.352timeunit));
draw (2cm,1.226timeunit);label.llft(btex {\smallersize 1226} etex, (2cm,1.226timeunit));
draw (3cm,1.149timeunit);label.llft(btex {\smallersize 1149} etex, (3cm,1.149timeunit));
draw (4cm,1.025timeunit);label.llft(btex {\smallersize 1025} etex, (4cm,1.025timeunit));
draw (5cm,0.947timeunit);label.llft(btex {\smallersize 947} etex, (5cm,0.947timeunit));

draw (0cm,1.287timeunit);label.llft(btex {\smallersize 1287} etex, (0cm,1.287timeunit));
draw (1cm,1.185timeunit);label.llft(btex {\smallersize 1185} etex, (1cm,1.185timeunit));
draw (2cm,1.063timeunit);label.llft(btex {\smallersize 1063} etex, (2cm,1.063timeunit));
draw (3cm,0.985timeunit);label.llft(btex {\smallersize 985} etex, (3cm,0.985timeunit));
draw (4cm,0.864timeunit);label.llft(btex {\smallersize 864} etex, (4cm,0.864timeunit));
draw (5cm,0.784timeunit);label.llft(btex {\smallersize 784} etex, (5cm,0.784timeunit));


pickup pencircle scaled thin;

drawarrow (0,0mm)--(5.5cm,0mm);
draw (0cm,0mm)--(0cm,-tick);
draw (1cm,0mm)--(1cm,-tick);
draw (2cm,0mm)--(2cm,-tick);
draw (3cm,0mm)--(3cm,-tick);
draw (4cm,0mm)--(4cm,-tick);
draw (5cm,0mm)--(5cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.bot(btex 3 etex, (3cm,-tick));
label.bot(btex 4 etex, (4cm,-tick));
label.bot(btex 5 etex, (5cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (5.5cm,0mm);

drawarrow (0,0)--(0,1.5timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0mm));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,1.5timeunit+.5cm));

endfig; % 5 attributes proving SLE78

end;