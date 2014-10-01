% Defining basic pens:

pickup pencircle scaled 0.2pt; thin.nib := savepen;
pickup pencircle scaled 0.4pt; rule.nib := savepen;
pickup pencircle scaled 0.8pt; thick.nib := savepen;
pickup pencircle scaled 2.5pt; dot.nib := savepen;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% General drawing
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Scaling (please set it up before making graphs)

def setrange(expr xmin, xmax, xsize, ymin, ymax, ysize)=
  x.min=xmin; x.max=xmax; x.size_=xmax-xmin; hsize_:=xsize;
  y.min=ymin; y.max=ymax; y.size_=ymax-ymin; vsize_:=ysize;
enddef;

vardef p primary z =
  (hsize_*(xpart(z)/x.size_), vsize_*(ypart(z)/y.size_))
enddef;

% Grading vertically, quite intuitive. The suffix `@#'
% can be `.top', `.ulft', `.lft', `.llft', `.bot',
% `.lrt', `.rt', `.urt' as for `label' 's and such...

vardef vgrad@#(expr xbase)(text t) =
  for y = t: gradlabel@#(decimal y, p(xbase, y)); endfor
enddef;

% Grading horizontally, quite intuitive. The suffix `@#'
% can be `.top', `.ulft', `.lft', `.llft', `.bot',
% `.lrt', `.rt', `.urt' as for `label' 's and such...

vardef hgrad@#(expr ybase)(text t) =
  for x = t: gradlabel@#(decimal x, p(x, ybase)); endfor
enddef;

% Single graduation, quite intuitive. The suffix `@#'
% can be `.top', `.ulft', `.lft', `.llft', `.bot',
% `.lrt', `.rt', `.urt' as for `label' 's and such...

vardef gradlabel@#(expr t, z) =
% interim labeloffset := 1.5labeloffset;
  draw z..z+0.333labeloffset*laboff@#;
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Implicit drawing
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Toy sample

boolean closedcurve;

% Second order method...

vardef ImplicitCurve(expr xinit,yinit,dh,ds) =
  save s, i, dfx, dfy, dfn;
  closedcurve:=false;
  for $ =-ds, ds:
    i:=0;
    x:=xinit; y:=yinit;
    forever:
      exitif closedcurve;
      %
      % first order
      %
      dfx := (f(x+dh,y)-f(x,y))/dh;
      dfy := (f(x,y+dh)-f(x,y))/dh;
      dfn := dfx++dfy;
      x' := x-(dfy/dfn)*$;
      y' := y+(dfx/dfn)*$;
      %
      % second order
      %
      dfx := (f(x'+dh,y')-f(x',y'))/dh;
      dfy := (f(x',y'+dh)-f(x',y'))/dh;
      dfn := dfx++dfy;
      x' := 0.5(x+x'-(dfy/dfn)*$);
      y' := 0.5(y+y'+(dfx/dfn)*$);
      %
      % drawing and next
      %
      i := i+1;
      draw p z..p z';
      x := x'; y := y';
      %
      % experimental exit conditions
      %
      exitif (i = 4000) or (x < x.min) or (x > x.max)
      or (y < y.min) or (y > y.max);
      if ((length((x,y)-(xinit,yinit)) < 4ds) and (i >= 5)):
	closedcurve:=true; draw p z..p(xinit,yinit); fi
    endfor
  endfor
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Figures
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

outputtemplate:="%j.mps";

beginfig(1);
  %
  % one has to set those quantities properly
  % (not too small because of MetaPost capabilities)
  %
  dh:=0.002;% should be quite smaller than ds
  ds:=0.02;% should be quite larger than dh
  %
  % with respect to the considered function
  %
  vardef f(expr x,y)=x**3-y**2-x+3 enddef;
  vardef g(expr x)=0.27x+1.355 enddef;
  vardef h(expr x)=0.27x+0.8 enddef;
  %
  % Then, set the graphical setting
  %
  setrange(-1.5,2,11cm,-2,2,7cm);
  pickup rule.nib;
  gradstep=0.2;
  vgrad.lft(0)(y.min+gradstep step gradstep until y.max-gradstep);
  vgrad.rt(0)(y.min+gradstep step gradstep until y.max-gradstep);
  hgrad.bot(0)(x.min+.5gradstep step .5gradstep until x.max);
  hgrad.top(0)(x.min+.5gradstep step .5gradstep until x.max);
  draw p(x.min,0)..p(x.max,0);
  draw p(0,y.min)..p(0,y.max);
  label.llft(btex {$x$} etex, p(x.max,-0.05));
  label.llft(btex {$y$} etex, p(-0.05,y.max-0.05));
  %
  % Personal hand tuning is needed in order to draw
  % convincing implicit curves.
  %
  pickup thick.nib;
  ImplicitCurve(1,1,dh,ds);
  draw p(x.min,g(x.min))..p(x.max,g(x.max));
  draw p(x.min,h(x.min))..p(x.max,h(x.max));

  pickup dot.nib;
  ppx=-0.74;
  rpx=1.54;
  draw p(ppx,g(ppx));label.ulft(btex {$P'$} etex, p(ppx,g(ppx)));
  draw p(rpx,g(rpx));label.ulft(btex {$-R'$} etex, p(rpx,g(rpx)));
  draw p(rpx,-g(rpx));label.llft(btex {$R'$} etex, p(rpx,-g(rpx)));
  pickup thick.nib;
  draw p(rpx,g(rpx))..p(rpx,-g(rpx)) dashed evenly;

  pickup dot.nib;
  px=-1.275;
  qx=0.26;
  rx=1.09;
  draw p(px,h(px));label.ulft(btex {$P$} etex, p(px,h(px)));
  draw p(qx,h(qx));label.ulft(btex {$Q$} etex, p(qx,h(qx)));
  draw p(rx,h(rx));label.ulft(btex {$-R$} etex, p(rx,h(rx)));
  draw p(rx,-h(rx));label.llft(btex {$R$} etex, p(rx,-h(rx)));
  pickup thick.nib;
  draw p(rx,h(rx))..p(rx,-h(rx)) dashed evenly;


%    else:
%      ImplicitCurve($+10eps,$+10eps,dh,ds);
%      ImplicitCurve($-10eps,$-10eps,dh,ds);
%      ImplicitCurve($+10eps,$-10eps,dh,ds);
%      ImplicitCurve($-10eps,$+10eps,dh,ds); fi
%  endfor;
  %  if (abs(0-1) > eps) and (abs(0) > eps):
  %    ImplicitCurve(0,0,dh,ds);
  %  else:
  %    ImplicitCurve(0+10eps,0+10eps,dh,ds);
  %    ImplicitCurve(0-10eps,0-10eps,dh,ds);
  %    ImplicitCurve(0+10eps,0-10eps,dh,ds);
  %    ImplicitCurve(0-10eps,0+10eps,dh,ds); fi

endfig;

end.
