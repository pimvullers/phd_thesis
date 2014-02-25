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

beginfig(2);

fill (0,0)--
(0cm,0.760timeunit)--(1cm,0.701timeunit)--(2cm,0.647timeunit)--
(3cm,0.592timeunit)--(4cm,0.536timeunit)
--(4cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.554timeunit)--(1cm,0.489timeunit)--(2cm,0.429timeunit)--
(3cm,0.367timeunit)--(4cm,0.305timeunit)
--(4cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.760timeunit);label.llft(btex {\smallersize 760} etex, (0cm,0.760timeunit));
draw (1cm,0.701timeunit);label.llft(btex {\smallersize 701} etex, (1cm,0.701timeunit));
draw (2cm,0.647timeunit);label.llft(btex {\smallersize 647} etex, (2cm,0.647timeunit));
draw (3cm,0.592timeunit);label.llft(btex {\smallersize 592} etex, (3cm,0.592timeunit));
draw (4cm,0.536timeunit);label.llft(btex {\smallersize 536} etex, (4cm,0.536timeunit));

draw (0cm,0.554timeunit);label.llft(btex {\smallersize 554} etex, (0cm,0.554timeunit));
draw (1cm,0.489timeunit);label.llft(btex {\smallersize 489} etex, (1cm,0.489timeunit));
draw (2cm,0.429timeunit);label.llft(btex {\smallersize 429} etex, (2cm,0.429timeunit));
draw (3cm,0.367timeunit);label.llft(btex {\smallersize 367} etex, (3cm,0.367timeunit));
draw (4cm,0.305timeunit);label.llft(btex {\smallersize 305} etex, (4cm,0.305timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(4.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
draw (3cm,0)--(3cm,-tick);
draw (4cm,0)--(4cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.bot(btex 3 etex, (3cm,-tick));
label.bot(btex 4 etex, (4cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (4.5cm,0);

drawarrow (0,0)--(0,timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,timeunit+.5cm));

endfig;

end;