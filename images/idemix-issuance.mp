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

timeunit := 2.5cm;
outputtemplate:="%j.mps";

beginfig(5); % issuance SLE78

fill (0,-5mm)--
(0cm,0.762timeunit)--(1cm,0.879timeunit)--(2cm,0.954timeunit)--
(3cm,1.022timeunit)--(4cm,1.105timeunit)
--(4cm,-5mm)--cycle withcolor 0.8white;

fill (0,-5mm)--
(0cm,0.196timeunit)--(1cm,0.258timeunit)--(2cm,0.281timeunit)--
(3cm,0.296timeunit)--(4cm,0.309timeunit)
--(4cm,-5mm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.762timeunit);label.llft(btex {\smallersize 2.262} etex, (0cm,0.762timeunit));
draw (1cm,0.879timeunit);label.llft(btex {\smallersize 2.379} etex, (1cm,0.879timeunit));
draw (2cm,0.954timeunit);label.llft(btex {\smallersize 2.454} etex, (2cm,0.954timeunit));
draw (3cm,1.022timeunit);label.llft(btex {\smallersize 2.522} etex, (3cm,1.022timeunit));
draw (4cm,1.105timeunit);label.llft(btex {\smallersize 2.605} etex, (4cm,1.105timeunit));

draw (0cm,0.196timeunit);label.llft(btex {\smallersize 1.696} etex, (0cm,0.196timeunit));
draw (1cm,0.258timeunit);label.llft(btex {\smallersize 1.758} etex, (1cm,0.258timeunit));
draw (2cm,0.281timeunit);label.llft(btex {\smallersize 1.781} etex, (2cm,0.281timeunit));
draw (3cm,0.296timeunit);label.llft(btex {\smallersize 1.796} etex, (3cm,0.296timeunit));
draw (4cm,0.309timeunit);label.llft(btex {\smallersize 1.809} etex, (4cm,0.309timeunit));


pickup pencircle scaled thin;

drawarrow (0,-5mm)--(4.5cm,-5mm);
draw (0cm,-5mm)--(0cm,-tick-5mm);
draw (1cm,-5mm)--(1cm,-tick-5mm);
draw (2cm,-5mm)--(2cm,-tick-5mm);
draw (3cm,-5mm)--(3cm,-tick-5mm);
draw (4cm,-5mm)--(4cm,-tick-5mm);
label.bot(btex 1 etex, (0cm,-tick-5mm));
label.bot(btex 2 etex, (1cm,-tick-5mm));
label.bot(btex 3 etex, (2cm,-tick-5mm));
label.bot(btex 4 etex, (3cm,-tick-5mm));
label.bot(btex 5 etex, (4cm,-tick-5mm));
label.rt(btex \# attributes etex, (0,0)) rotated 90 shifted (4.5cm,-5mm);

fill (0,-0.15cm)--(-break,-0.225cm)--(break,-0.275cm)--cycle withcolor 0.6white;
fill (0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--cycle withcolor white;
draw (0,-0.5cm)--(0,-0.35cm)--(break,-0.275cm)--(-break,-0.225cm)--(0,-0.15cm)--(0,0);

drawarrow (0,0)--(0,1.2timeunit+.25cm);
draw (0,-5mm)--(-tick,-5mm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,-5mm));
label.lft(btex 1.5s etex, (-tick,0));
label.lft(btex 2.5s etex, (-tick,timeunit));
label.rt(btex time etex, (0,1.2timeunit+.25cm));

endfig; % issuance SLE78

end;
