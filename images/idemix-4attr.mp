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

beginfig(3); % 4 attributes proving SLE78

fill (0,-5mm)--
(0cm,0.584timeunit)--(1cm,0.453timeunit)--(2cm,0.380timeunit)--
(3cm,0.278timeunit)--(4cm,0.176timeunit)
--(4cm,-5mm)--cycle withcolor 0.8white;

fill (0,-5mm)--
(0cm,0.429timeunit)--(1cm,0.302timeunit)--(2cm,0.228timeunit)--
(3cm,0.127timeunit)--(4cm,0.026timeunit)
--(4cm,-5mm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.584timeunit);label.llft(btex {\smallersize 1.334} etex, (0cm,0.584timeunit));
draw (1cm,0.453timeunit);label.llft(btex {\smallersize 1.203} etex, (1cm,0.453timeunit));
draw (2cm,0.380timeunit);label.llft(btex {\smallersize 1.130} etex, (2cm,0.380timeunit));
draw (3cm,0.278timeunit);label.llft(btex {\smallersize 1.028} etex, (3cm,0.278timeunit));
draw (4cm,0.176timeunit);label.llft(btex {\smallersize 0.926} etex, (4cm,0.176timeunit));

draw (0cm,0.429timeunit);label.llft(btex {\smallersize 1.179} etex, (0cm,0.429timeunit));
draw (1cm,0.302timeunit);label.llft(btex {\smallersize 1.052} etex, (1cm,0.302timeunit));
draw (2cm,0.228timeunit);label.llft(btex {\smallersize 0.978} etex, (2cm,0.228timeunit));
draw (3cm,0.127timeunit);label.llft(btex {\smallersize 0.877} etex, (3cm,0.127timeunit));
draw (4cm,0.026timeunit);label.llft(btex {\smallersize 0.776} etex, (4cm,0.026timeunit));


pickup pencircle scaled thin;

drawarrow (0,-5mm)--(4.5cm,-5mm);
draw (0cm,-5mm)--(0cm,-tick-5mm);
draw (1cm,-5mm)--(1cm,-tick-5mm);
draw (2cm,-5mm)--(2cm,-tick-5mm);
draw (3cm,-5mm)--(3cm,-tick-5mm);
draw (4cm,-5mm)--(4cm,-tick-5mm);
label.bot(btex 0 etex, (0cm,-tick-5mm));
label.bot(btex 1 etex, (1cm,-tick-5mm));
label.bot(btex 2 etex, (2cm,-tick-5mm));
label.bot(btex 3 etex, (3cm,-tick-5mm));
label.bot(btex 4 etex, (4cm,-tick-5mm));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (4.5cm,-5mm);

fill (0,-0.15cm)--(-break,-0.225cm)--(break,-0.275cm)--cycle withcolor 0.6white;
fill (0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--cycle withcolor white;
draw (0,-0.5cm)--(0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--(0,-0.15cm)--(0,0);

drawarrow (0,0)--(0,0.75timeunit+.25cm);
draw (0,-5mm)--(-tick,-5mm);
draw (0,0)--(-tick,0);
draw (0,0.75timeunit)--(-tick,0.75timeunit);
label.lft(btex 0 etex, (-tick,-5mm));
label.lft(btex 0.75s etex, (-tick,0));
label.lft(btex 1.5s etex, (-tick,0.75timeunit));
label.rt(btex time etex, (0,0.75timeunit+.25cm));

endfig; % 4 attributes proving SLE78

end;
