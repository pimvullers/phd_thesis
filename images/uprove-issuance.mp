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

beginfig(6);

%% Core:

c_1 := (2.281/6.000*timeunit);
c_2 := (2.521/6.000*timeunit);
c_3 := (2.784/6.000*timeunit);
c_4 := (2.933/6.000*timeunit);
c_5 := (3.131/6.000*timeunit);

%% Total: 

t_1 := (3.095/6.000*timeunit);
t_2 := (3.623/6.000*timeunit);
t_3 := (4.181/6.000*timeunit);
t_4 := (4.808/6.000*timeunit);
t_5 := (5.489/6.000*timeunit);

fill (0,0)--(0cm,t_1)--(1cm,t_2)--(2cm,t_3)--(3cm,t_4)--(4cm,t_5)--(4cm,0)--cycle withcolor 0.8white;

fill (0,0)--(0cm,c_1)--(1cm,c_2)--(2cm,c_3)--(3cm,c_4)--(4cm,c_5)--(4cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,t_1);label.ulft(btex {\smallersize 3095} etex, (0cm,t_1));
draw (1cm,t_2);label.ulft(btex {\smallersize 3623} etex, (1cm,t_2));
draw (2cm,t_3);label.ulft(btex {\smallersize 4181} etex, (2cm,t_3));
draw (3cm,t_4);label.ulft(btex {\smallersize 4808} etex, (3cm,t_4));
draw (4cm,t_5);label.ulft(btex {\smallersize 5489} etex, (4cm,t_5));

draw (0cm,c_1);label.ulft(btex {\smallersize 2281} etex, (0cm,c_1));
draw (1cm,c_2);label.ulft(btex {\smallersize 2521} etex, (1cm,c_2));
draw (2cm,c_3);label.ulft(btex {\smallersize 2784} etex, (2cm,c_3));
draw (3cm,c_4);label.ulft(btex {\smallersize 2933} etex, (3cm,c_4));
draw (4cm,c_5);label.ulft(btex {\smallersize 3131} etex, (4cm,c_5));


pickup pencircle scaled thin;

drawarrow (0,0)--(4.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
draw (3cm,0)--(3cm,-tick);
draw (4cm,0)--(4cm,-tick);
label.bot(btex 1 etex, (0cm,-tick));
label.bot(btex 2 etex, (1cm,-tick));
label.bot(btex 3 etex, (2cm,-tick));
label.bot(btex 4 etex, (3cm,-tick));
label.bot(btex 5 etex, (4cm,-tick));
label.rt(btex \# attributes etex, (0,0)) rotated 90 shifted (4.5cm,0);

drawarrow (0,0)--(0,timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 6000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,timeunit+.5cm));

endfig;

end;
