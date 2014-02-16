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
outputtemplate:="%j%c.mps";

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


beginfig(2); % 3 attributes proving SLE78

fill (0,-5mm)--
(0cm,0.469timeunit)--(1cm,0.365timeunit)--(2cm,0.263timeunit)--
(3cm,0.162timeunit)--(3cm,-5mm)--cycle withcolor 0.8white;

fill (0,-5mm)--
(0cm,0.327timeunit)--(1cm,0.224timeunit)--(2cm,0.123timeunit)--
(3cm,0.024timeunit)--(3cm,-5mm)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.469timeunit);label.llft(btex {\smallersize 1.219} etex, (0cm,0.469timeunit));
draw (1cm,0.365timeunit);label.llft(btex {\smallersize 1.115} etex, (1cm,0.365timeunit));
draw (2cm,0.263timeunit);label.llft(btex {\smallersize 1.013} etex, (2cm,0.263timeunit));
draw (3cm,0.162timeunit);label.llft(btex {\smallersize 0.912} etex, (3cm,0.162timeunit));

draw (0cm,0.327timeunit);label.llft(btex {\smallersize 1.077} etex, (0cm,0.327timeunit));
draw (1cm,0.224timeunit);label.llft(btex {\smallersize 0.974} etex, (1cm,0.224timeunit));
draw (2cm,0.123timeunit);label.llft(btex {\smallersize 0.873} etex, (2cm,0.123timeunit));
draw (3cm,0.024timeunit);label.llft(btex {\smallersize 0.774} etex, (3cm,0.024timeunit));


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
label.lft(btex 0.75s etex, (-tick,0));
label.lft(btex 1.5s etex, (-tick,0.75timeunit));
label.rt(btex time etex, (0,0.75timeunit+.25cm));

endfig; % 3 attributes proving SLE78

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
draw (0cm,0.704timeunit);label.llft(btex {\smallersize 1.454} etex, (0cm,0.704timeunit));
draw (1cm,0.602timeunit);label.llft(btex {\smallersize 1.352} etex, (1cm,0.602timeunit));
draw (2cm,0.476timeunit);label.llft(btex {\smallersize 1.226} etex, (2cm,0.476timeunit));
draw (3cm,0.399timeunit);label.llft(btex {\smallersize 1.149} etex, (3cm,0.399timeunit));
draw (4cm,0.275timeunit);label.llft(btex {\smallersize 1.025} etex, (4cm,0.275timeunit));
draw (5cm,0.197timeunit);label.llft(btex {\smallersize 0.947} etex, (5cm,0.197timeunit));

draw (0cm,0.537timeunit);label.llft(btex {\smallersize 1.287} etex, (0cm,0.537timeunit));
draw (1cm,0.435timeunit);label.llft(btex {\smallersize 1.185} etex, (1cm,0.435timeunit));
draw (2cm,0.313timeunit);label.llft(btex {\smallersize 1.063} etex, (2cm,0.313timeunit));
draw (3cm,0.235timeunit);label.llft(btex {\smallersize 0.985} etex, (3cm,0.235timeunit));
draw (4cm,0.114timeunit);label.llft(btex {\smallersize 0.864} etex, (4cm,0.114timeunit));
draw (5cm,0.034timeunit);label.llft(btex {\smallersize 0.784} etex, (5cm,0.034timeunit));


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
label.lft(btex 0.75s etex, (-tick,0));
label.lft(btex 1.5s etex, (-tick,0.75timeunit));
label.rt(btex time etex, (0,0.75timeunit+.25cm));

endfig; % 5 attributes proving SLE78

timeunit := 2.5cm;

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

beginfig(7); % light gray box

fill (0,0)--(0,10pt)--(10pt,10pt)--(10pt,0)--cycle withcolor 0.8white;

endfig;

beginfig(8); % dark gray box

fill (0,0)--(0,10pt)--(10pt,10pt)--(10pt,0)--cycle withcolor 0.6white;

endfig;

end;
