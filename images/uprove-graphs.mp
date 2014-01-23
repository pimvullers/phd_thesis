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


beginfig(1);

fill (0,0)--
(0cm,0.869timeunit)--(1cm,0.814timeunit)--(2cm,0.764timeunit)--
(3cm,0.708timeunit)--(4cm,0.651timeunit)--(5cm,0.594timeunit)
--(5cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.648timeunit)--(1cm,0.586timeunit)--(2cm,0.530timeunit)--
(3cm,0.469timeunit)--(4cm,0.406timeunit)--(5cm,0.343timeunit)
--(5cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.869timeunit);label.llft(btex {\smallersize 869} etex, (0cm,0.869timeunit));
draw (1cm,0.814timeunit);label.llft(btex {\smallersize 814} etex, (1cm,0.814timeunit));
draw (2cm,0.764timeunit);label.llft(btex {\smallersize 764} etex, (2cm,0.764timeunit));
draw (3cm,0.708timeunit);label.llft(btex {\smallersize 708} etex, (3cm,0.708timeunit));
draw (4cm,0.651timeunit);label.llft(btex {\smallersize 651} etex, (4cm,0.651timeunit));
draw (5cm,0.594timeunit);label.llft(btex {\smallersize 594} etex, (5cm,0.594timeunit));

draw (0cm,0.648timeunit);label.llft(btex {\smallersize 648} etex, (0cm,0.648timeunit));
draw (1cm,0.586timeunit);label.llft(btex {\smallersize 586} etex, (1cm,0.586timeunit));
draw (2cm,0.530timeunit);label.llft(btex {\smallersize 530} etex, (2cm,0.530timeunit));
draw (3cm,0.469timeunit);label.llft(btex {\smallersize 469} etex, (3cm,0.469timeunit));
draw (4cm,0.406timeunit);label.llft(btex {\smallersize 406} etex, (4cm,0.406timeunit));
draw (5cm,0.343timeunit);label.llft(btex {\smallersize 343} etex, (5cm,0.343timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(5.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
draw (3cm,0)--(3cm,-tick);
draw (4cm,0)--(4cm,-tick);
draw (5cm,0)--(5cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.bot(btex 3 etex, (3cm,-tick));
label.bot(btex 4 etex, (4cm,-tick));
label.bot(btex 5 etex, (5cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (5.5cm,0);

drawarrow (0,0)--(0,timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,timeunit+.5cm));

%% label.lft(btex 5 attr.\ conf. etex, (5cm,timeunit));

endfig;


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
draw (0cm,0.760timeunit);label.llft(btex {\smallersize .760} etex, (0cm,0.760timeunit));
draw (1cm,0.701timeunit);label.llft(btex {\smallersize .701} etex, (1cm,0.701timeunit));
draw (2cm,0.647timeunit);label.llft(btex {\smallersize .647} etex, (2cm,0.647timeunit));
draw (3cm,0.592timeunit);label.llft(btex {\smallersize .592} etex, (3cm,0.592timeunit));
draw (4cm,0.536timeunit);label.llft(btex {\smallersize .536} etex, (4cm,0.536timeunit));

draw (0cm,0.554timeunit);label.llft(btex {\smallersize .554} etex, (0cm,0.554timeunit));
draw (1cm,0.489timeunit);label.llft(btex {\smallersize .489} etex, (1cm,0.489timeunit));
draw (2cm,0.429timeunit);label.llft(btex {\smallersize .429} etex, (2cm,0.429timeunit));
draw (3cm,0.367timeunit);label.llft(btex {\smallersize .367} etex, (3cm,0.367timeunit));
draw (4cm,0.305timeunit);label.llft(btex {\smallersize .305} etex, (4cm,0.305timeunit));


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

drawarrow (0,0)--(0,.9timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,.9timeunit)--(-tick,.9timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 0.9s etex, (-tick,.9timeunit));
label.rt(btex time etex, (0,.9timeunit+.5cm));

label.lft(btex 4 attr.\ conf. etex, (4cm,.9timeunit));

endfig;

beginfig(3);

fill (0,0)--
(0cm,0.653timeunit)--(1cm,0.591timeunit)--(2cm,0.538timeunit)--
(3cm,0.475timeunit)
--(3cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.461timeunit)--(1cm,0.393timeunit)--(2cm,0.334timeunit)--
(3cm,0.266timeunit)
--(3cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.653timeunit);label.llft(btex {\smallersize .653} etex, (0cm,0.653timeunit));
draw (1cm,0.591timeunit);label.llft(btex {\smallersize .591} etex, (1cm,0.591timeunit));
draw (2cm,0.538timeunit);label.llft(btex {\smallersize .538} etex, (2cm,0.538timeunit));
draw (3cm,0.475timeunit);label.llft(btex {\smallersize .475} etex, (3cm,0.475timeunit));

draw (0cm,0.461timeunit);label.llft(btex {\smallersize .461} etex, (0cm,0.461timeunit));
draw (1cm,0.393timeunit);label.llft(btex {\smallersize .393} etex, (1cm,0.393timeunit));
draw (2cm,0.334timeunit);label.llft(btex {\smallersize .334} etex, (2cm,0.334timeunit));
draw (3cm,0.266timeunit);label.llft(btex {\smallersize .266} etex, (3cm,0.266timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(3.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
draw (3cm,0)--(3cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.bot(btex 3 etex, (3cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (3.5cm,0);

drawarrow (0,0)--(0,.8timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,.8timeunit)--(-tick,.8timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 0.8s etex, (-tick,.8timeunit));
label.rt(btex time etex, (0,.8timeunit+.5cm));

label.lft(btex 3 attr.\ conf. etex, (3cm,.8timeunit));

endfig;

beginfig(4);

fill (0,0)--
(0cm,0.550timeunit)--(1cm,0.487timeunit)--(2cm,0.433timeunit)
--(2cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.372timeunit)--(1cm,0.304timeunit)--(2cm,0.245timeunit)
--(2cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.550timeunit);label.llft(btex {\smallersize 550} etex, (0cm,0.550timeunit));
draw (1cm,0.487timeunit);label.llft(btex {\smallersize 487} etex, (1cm,0.487timeunit));
draw (2cm,0.433timeunit);label.llft(btex {\smallersize 433} etex, (2cm,0.433timeunit));

draw (0cm,0.372timeunit);label.llft(btex {\smallersize 372} etex, (0cm,0.372timeunit));
draw (1cm,0.304timeunit);label.llft(btex {\smallersize 304} etex, (1cm,0.304timeunit));
draw (2cm,0.245timeunit);label.llft(btex {\smallersize 245} etex, (2cm,0.245timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(2.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
draw (2cm,0)--(2cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.bot(btex 2 etex, (2cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (2.5cm,0);

drawarrow (0,0)--(0,timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,timeunit)--(-tick,timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 1000 etex, (-tick,timeunit));
label.rt(btex time (ms) etex, (0,timeunit+.5cm));

%% label.lft(btex 2 attr.\ conf. etex, (2.5cm,.7timeunit));

endfig;

beginfig(5);

fill (0,0)--
(0cm,0.444timeunit)--(1cm,0.382timeunit)
--(1cm,0)--cycle withcolor 0.8white;

fill (0,0)--
(0cm,0.280timeunit)--(1cm,0.214timeunit)
--(1cm,0)--cycle withcolor 0.6white;

pickup pencircle scaled thick;
draw (0cm,0.444timeunit);label.llft(btex {\smallersize .444} etex, (0cm,0.444timeunit));
draw (1cm,0.382timeunit);label.llft(btex {\smallersize .382} etex, (1cm,0.382timeunit));

draw (0cm,0.280timeunit);label.llft(btex {\smallersize .280} etex, (0cm,0.280timeunit));
draw (1cm,0.214timeunit);label.llft(btex {\smallersize .214} etex, (1cm,0.214timeunit));


pickup pencircle scaled thin;

drawarrow (0,0)--(1.5cm,0);
draw (0cm,0)--(0cm,-tick);
draw (1cm,0)--(1cm,-tick);
label.bot(btex 0 etex, (0cm,-tick));
label.bot(btex 1 etex, (1cm,-tick));
label.rt(btex \# disclosed etex, (0,0)) rotated 90 shifted (1.5cm,0);

drawarrow (0,0)--(0,.6timeunit+.5cm);
draw (0,0)--(-tick,0);
draw (0,.6timeunit)--(-tick,.6timeunit);
label.lft(btex 0 etex, (-tick,0));
label.lft(btex 0.6s etex, (-tick,.6timeunit));
label.rt(btex time etex, (0,.6timeunit+.5cm));

label.lft(btex 1 attr.\ conf. etex, (2cm,.6timeunit));

endfig;

beginfig(6);

timeunit := 3.5cm;

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

beginfig(7);

fill (0,0)--(0,10pt)--(10pt,10pt)--(10pt,0)--cycle withcolor 0.8white;

endfig;

beginfig(8);

fill (0,0)--(0,10pt)--(10pt,10pt)--(10pt,0)--cycle withcolor 0.6white;

endfig;

end;
