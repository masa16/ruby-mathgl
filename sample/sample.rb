libdir = File.expand_path(File.dirname(__FILE__))
require libdir+"/../ext/mathgl/mathgl.so"
require libdir+"/prepare"

def mgl_rnd
  rand
end

def pow(a,b)
  a**b
end

M_PI = Math::PI
NULL = nil
NAN  = 0.0/0.0

procs = {}
# void smgl_fexport(mglGraph *gr)
# {
# 	gr->SubPlot(3,2,0);
# 	double d,x1,x2,x0,y=0.95;
# 	d=0.3, x0=0.2, x1=0.5, x2=0.6;
# 	gr->Line(mglPoint(x0,1-0*d),mglPoint(x1,1-0*d),"k-");	gr->Puts(mglPoint(x2,y-0*d),"Solid '-'",":rL");
# 	gr->Line(mglPoint(x0,1-1*d),mglPoint(x1,1-1*d),"k|");	gr->Puts(mglPoint(x2,y-1*d),"Long Dash '|'",":rL");
# 	gr->Line(mglPoint(x0,1-2*d),mglPoint(x1,1-2*d),"k;");	gr->Puts(mglPoint(x2,y-2*d),"Dash ';'",":rL");
# 	gr->Line(mglPoint(x0,1-3*d),mglPoint(x1,1-3*d),"k=");	gr->Puts(mglPoint(x2,y-3*d),"Small dash '='",":rL");
# 	gr->Line(mglPoint(x0,1-4*d),mglPoint(x1,1-4*d),"kj");	gr->Puts(mglPoint(x2,y-4*d),"Dash-dot 'j'",":rL");
# 	gr->Line(mglPoint(x0,1-5*d),mglPoint(x1,1-5*d),"ki");	gr->Puts(mglPoint(x2,y-5*d),"Small dash-dot 'i'",":rL");
# 	gr->Line(mglPoint(x0,1-6*d),mglPoint(x1,1-6*d),"k:");	gr->Puts(mglPoint(x2,y-6*d),"Dots ':'",":rL");
# 	gr->Line(mglPoint(x0,1-7*d),mglPoint(x1,1-7*d),"k ");	gr->Puts(mglPoint(x2,y-7*d),"None ' '",":rL");
#
# 	d=0.25; x1=-1; x0=-0.8;	y = -0.05;
# 	gr->Mark(mglPoint(x1,5*d),"k.");		gr->Puts(mglPoint(x0,y+5*d),"'.'",":rL");
# 	gr->Mark(mglPoint(x1,4*d),"k+");		gr->Puts(mglPoint(x0,y+4*d),"'+'",":rL");
# 	gr->Mark(mglPoint(x1,3*d),"kx");		gr->Puts(mglPoint(x0,y+3*d),"'x'",":rL");
# 	gr->Mark(mglPoint(x1,2*d),"k*");		gr->Puts(mglPoint(x0,y+2*d),"'*'",":rL");
# 	gr->Mark(mglPoint(x1,d),"ks");		gr->Puts(mglPoint(x0,y+d),"'s'",":rL");
# 	gr->Mark(mglPoint(x1,0),"kd");		gr->Puts(mglPoint(x0,y),"'d'",":rL");
# 	gr->Mark(mglPoint(x1,-d,0),"ko");	gr->Puts(mglPoint(x0,y-d),"'o'",":rL");
# 	gr->Mark(mglPoint(x1,-2*d,0),"k^");	gr->Puts(mglPoint(x0,y-2*d),"'\\^'",":rL");
# 	gr->Mark(mglPoint(x1,-3*d,0),"kv");	gr->Puts(mglPoint(x0,y-3*d),"'v'",":rL");
# 	gr->Mark(mglPoint(x1,-4*d,0),"k<");	gr->Puts(mglPoint(x0,y-4*d),"'<'",":rL");
# 	gr->Mark(mglPoint(x1,-5*d,0),"k>");	gr->Puts(mglPoint(x0,y-5*d),"'>'",":rL");
#
# 	d=0.25; x1=-0.5; x0=-0.3;	y = -0.05;
# 	gr->Mark(mglPoint(x1,5*d),"k#.");	gr->Puts(mglPoint(x0,y+5*d),"'\\#.'",":rL");
# 	gr->Mark(mglPoint(x1,4*d),"k#+");	gr->Puts(mglPoint(x0,y+4*d),"'\\#+'",":rL");
# 	gr->Mark(mglPoint(x1,3*d),"k#x");	gr->Puts(mglPoint(x0,y+3*d),"'\\#x'",":rL");
# 	gr->Mark(mglPoint(x1,2*d),"k#*");	gr->Puts(mglPoint(x0,y+2*d),"'\\#*'",":rL");
# 	gr->Mark(mglPoint(x1,d),"k#s");		gr->Puts(mglPoint(x0,y+d),"'\\#s'",":rL");
# 	gr->Mark(mglPoint(x1,0),"k#d");		gr->Puts(mglPoint(x0,y),"'\\#d'",":rL");
# 	gr->Mark(mglPoint(x1,-d,0),"k#o");	gr->Puts(mglPoint(x0,y-d),"'\\#o'",":rL");
# 	gr->Mark(mglPoint(x1,-2*d,0),"k#^");	gr->Puts(mglPoint(x0,y-2*d),"'\\#\\^'",":rL");
# 	gr->Mark(mglPoint(x1,-3*d,0),"k#v");	gr->Puts(mglPoint(x0,y-3*d),"'\\#v'",":rL");
# 	gr->Mark(mglPoint(x1,-4*d,0),"k#<");	gr->Puts(mglPoint(x0,y-4*d),"'\\#<'",":rL");
# 	gr->Mark(mglPoint(x1,-5*d,0),"k#>");	gr->Puts(mglPoint(x0,y-5*d),"'\\#>'",":rL");
#
# 	gr->SubPlot(3,2,1);
# 	double a=0.1,b=0.4,c=0.5;
# 	gr->Line(mglPoint(a,1),mglPoint(b,1),"k-A");		gr->Puts(mglPoint(c,1),"Style 'A' or 'A\\_'",":rL");
# 	gr->Line(mglPoint(a,0.8),mglPoint(b,0.8),"k-V");	gr->Puts(mglPoint(c,0.8),"Style 'V' or 'V\\_'",":rL");
# 	gr->Line(mglPoint(a,0.6),mglPoint(b,0.6),"k-K");	gr->Puts(mglPoint(c,0.6),"Style 'K' or 'K\\_'",":rL");
# 	gr->Line(mglPoint(a,0.4),mglPoint(b,0.4),"k-I");	gr->Puts(mglPoint(c,0.4),"Style 'I' or 'I\\_'",":rL");
# 	gr->Line(mglPoint(a,0.2),mglPoint(b,0.2),"k-D");	gr->Puts(mglPoint(c,0.2),"Style 'D' or 'D\\_'",":rL");
# 	gr->Line(mglPoint(a,0),mglPoint(b,0),"k-S");		gr->Puts(mglPoint(c,0),"Style 'S' or 'S\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.2),mglPoint(b,-0.2),"k-O");	gr->Puts(mglPoint(c,-0.2),"Style 'O' or 'O\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.4),mglPoint(b,-0.4),"k-T");	gr->Puts(mglPoint(c,-0.4),"Style 'T' or 'T\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.6),mglPoint(b,-0.6),"k-_");	gr->Puts(mglPoint(c,-0.6),"Style '\\_' or none",":rL");
# 	gr->Line(mglPoint(a,-0.8),mglPoint(b,-0.8),"k-AS");	gr->Puts(mglPoint(c,-0.8),"Style 'AS'",":rL");
# 	gr->Line(mglPoint(a,-1),mglPoint(b,-1),"k-_A");		gr->Puts(mglPoint(c,-1),"Style '\\_A'",":rL");
#
# 	a=-1;	b=-0.7;	c=-0.6;
# 	gr->Line(mglPoint(a,1),mglPoint(b,1),"kAA");		gr->Puts(mglPoint(c,1),"Style 'AA'",":rL");
# 	gr->Line(mglPoint(a,0.8),mglPoint(b,0.8),"kVV");	gr->Puts(mglPoint(c,0.8),"Style 'VV'",":rL");
# 	gr->Line(mglPoint(a,0.6),mglPoint(b,0.6),"kKK");	gr->Puts(mglPoint(c,0.6),"Style 'KK'",":rL");
# 	gr->Line(mglPoint(a,0.4),mglPoint(b,0.4),"kII");	gr->Puts(mglPoint(c,0.4),"Style 'II'",":rL");
# 	gr->Line(mglPoint(a,0.2),mglPoint(b,0.2),"kDD");	gr->Puts(mglPoint(c,0.2),"Style 'DD'",":rL");
# 	gr->Line(mglPoint(a,0),mglPoint(b,0),"kSS");		gr->Puts(mglPoint(c,0),"Style 'SS'",":rL");
# 	gr->Line(mglPoint(a,-0.2),mglPoint(b,-0.2),"kOO");	gr->Puts(mglPoint(c,-0.2),"Style 'OO'",":rL");
# 	gr->Line(mglPoint(a,-0.4),mglPoint(b,-0.4),"kTT");	gr->Puts(mglPoint(c,-0.4),"Style 'TT'",":rL");
# 	gr->Line(mglPoint(a,-0.6),mglPoint(b,-0.6),"k-__");	gr->Puts(mglPoint(c,-0.6),"Style '\\_\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.8),mglPoint(b,-0.8),"k-VA");	gr->Puts(mglPoint(c,-0.8),"Style 'VA'",":rL");
# 	gr->Line(mglPoint(a,-1),mglPoint(b,-1),"k-AV");		gr->Puts(mglPoint(c,-1),"Style 'AV'",":rL");
#
# 	gr->SubPlot(3,2,2);
#
# 	gr->FaceZ(mglPoint(-1,	-1), 0.4, 0.3, "L#");	gr->Puts(mglPoint(-0.8,-0.9), "L", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-1), 0.4, 0.3, "E#");	gr->Puts(mglPoint(-0.4,-0.9), "E", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-1), 0.4, 0.3, "N#");	gr->Puts(mglPoint(0,  -0.9), "N", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-1), 0.4, 0.3, "U#");	gr->Puts(mglPoint(0.4,-0.9), "U", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-1), 0.4, 0.3, "Q#");	gr->Puts(mglPoint(0.8,-0.9), "Q", "w:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	-0.7), 0.4, 0.3, "l#");	gr->Puts(mglPoint(-0.8,-0.6), "l", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-0.7), 0.4, 0.3, "e#");	gr->Puts(mglPoint(-0.4,-0.6), "e", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-0.7), 0.4, 0.3, "n#");	gr->Puts(mglPoint(0,  -0.6), "n", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-0.7), 0.4, 0.3, "u#");	gr->Puts(mglPoint(0.4,-0.6), "u", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-0.7), 0.4, 0.3, "q#");	gr->Puts(mglPoint(0.8,-0.6), "q", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	-0.4), 0.4, 0.3, "C#");	gr->Puts(mglPoint(-0.8,-0.3), "C", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-0.4), 0.4, 0.3, "M#");	gr->Puts(mglPoint(-0.4,-0.3), "M", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-0.4), 0.4, 0.3, "Y#");	gr->Puts(mglPoint(0,  -0.3), "Y", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-0.4), 0.4, 0.3, "k#");	gr->Puts(mglPoint(0.4,-0.3), "k", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-0.4), 0.4, 0.3, "P#");	gr->Puts(mglPoint(0.8,-0.3), "P", "w:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	-0.1), 0.4, 0.3, "c#");	gr->Puts(mglPoint(-0.8, 0), "c", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-0.1), 0.4, 0.3, "m#");	gr->Puts(mglPoint(-0.4, 0), "m", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-0.1), 0.4, 0.3, "y#");	gr->Puts(mglPoint(0,   0), "y", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-0.1), 0.4, 0.3, "w#");	gr->Puts(mglPoint(0.4, 0), "w", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-0.1), 0.4, 0.3, "p#");	gr->Puts(mglPoint(0.8, 0), "p", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	0.2), 0.4, 0.3, "B#");	gr->Puts(mglPoint(-0.8, 0.3), "B", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,0.2), 0.4, 0.3, "G#");	gr->Puts(mglPoint(-0.4, 0.3), "G", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,0.2), 0.4, 0.3, "R#");	gr->Puts(mglPoint(0,   0.3), "R", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	0.2), 0.4, 0.3, "H#");	gr->Puts(mglPoint(0.4, 0.3), "H", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	0.2), 0.4, 0.3, "W#");	gr->Puts(mglPoint(0.8, 0.3), "W", "w:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	0.5), 0.4, 0.3, "b#");	gr->Puts(mglPoint(-0.8, 0.6), "b", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,0.5), 0.4, 0.3, "g#");	gr->Puts(mglPoint(-0.4, 0.6), "g", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,0.5), 0.4, 0.3, "r#");	gr->Puts(mglPoint(0,   0.6), "r", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	0.5), 0.4, 0.3, "h#");	gr->Puts(mglPoint(0.4, 0.6), "h", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	0.5), 0.4, 0.3, "w#");	gr->Puts(mglPoint(0.8, 0.6), "w", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	0.8), 0.4, 0.3, "{r1}#");	gr->Puts(mglPoint(-0.8, 0.9), "\\{r1\\}", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,0.8), 0.4, 0.3, "{r3}#");	gr->Puts(mglPoint(-0.4, 0.9), "\\{r3\\}", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,0.8), 0.4, 0.3, "{r5}#");	gr->Puts(mglPoint(0,   0.9), "\\{r5\\}", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	0.8), 0.4, 0.3, "{r7}#");	gr->Puts(mglPoint(0.4, 0.9), "\\{r7\\}", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	0.8), 0.4, 0.3, "{r9}#");	gr->Puts(mglPoint(0.8, 0.9), "\\{r9\\}", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1, -1.3), 1, 0.3, "{xff9966}#");	gr->Puts(mglPoint(-0.5,-1.2), "\\{xff9966\\}", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0,  -1.3), 1, 0.3, "{x83CAFF}#");	gr->Puts(mglPoint( 0.5,-1.2), "\\{x83CAFF\\}", "k:C", -1.4);
#
# 	gr->SubPlot(3,2,3);
# 	char stl[3]="r1", txt[4]="'1'";
# 	for(int i=0;i<10;i++)
# 	{
# 		txt[1]=stl[1]='0'+i;
# 		gr->Line(mglPoint(-1,0.2*i-1),mglPoint(1,0.2*i-1),stl);
# 		gr->Puts(mglPoint(1.05,0.2*i-1),txt,":L");
# 	}
#
# 	gr->SubPlot(3,2,4);	gr->Title("TriPlot sample");	gr->Rotate(50,60);
# 	double t[] = {0,1,2, 0,1,3, 0,2,3, 1,2,3};
# 	double xt[] = {-1,1,0,0}, yt[] = {-1,-1,1,0}, zt[] = {-1,-1,-1,1};
# 	mglData tt(4,3,t), uu(4,xt), vv(4,yt), ww(4,zt);
# 	gr->TriPlot(tt,uu,vv,ww,"b");
# 	gr->TriPlot(tt,uu,vv,ww,"k#");
#
# 	gr->SubPlot(3,2,5);
# 	mglData r(4);	r.Fill(1,4);
# 	gr->SetRanges(1,4,1,4);	gr->Axis();
# 	gr->Mark(r,r,"s");
# 	gr->Plot(r,"b");
#
# 	gr->WriteJPEG("fexport.jpg");
# 	gr->WritePNG("fexport.png");
# 	gr->WriteBMP("fexport.bmp");
# 	gr->WriteTGA("fexport.tga");
# 	gr->WriteEPS("fexport.eps");
# 	gr->WriteSVG("fexport.svg");
# 	gr->WriteGIF("fexport.gif");
#
# 	gr->WriteXYZ("fexport.xyz");
# 	gr->WriteSTL("fexport.stl");
# 	gr->WriteOFF("fexport.off");
# 	gr->WriteTEX("fexport.tex");
# 	gr->WriteOBJ("fexport.obj");
# 	gr->WritePRC("fexport.prc");
# }
procs['fexport'] = proc do
  sub_plot(3,2,0)
  y = 0.95
  d=0.3
  x0=0.2
  x1=0.5
  x2=0.6
  line([x0,1-0*d],[x1,1-0*d],"k-")
  puts([x2,y-0*d],"Solid '-'",":rL")
  line([x0,1-1*d],[x1,1-1*d],"k|")
  puts([x2,y-1*d],"Long Dash '|'",":rL")
  line([x0,1-2*d],[x1,1-2*d],"k;")
  puts([x2,y-2*d],"Dash ';'",":rL")
  line([x0,1-3*d],[x1,1-3*d],"k=")
  puts([x2,y-3*d],"Small dash '='",":rL")
  line([x0,1-4*d],[x1,1-4*d],"kj")
  puts([x2,y-4*d],"Dash-dot 'j'",":rL")
  line([x0,1-5*d],[x1,1-5*d],"ki")
  puts([x2,y-5*d],"Small dash-dot 'i'",":rL")
  line([x0,1-6*d],[x1,1-6*d],"k:")
  puts([x2,y-6*d],"Dots ':'",":rL")
  line([x0,1-7*d],[x1,1-7*d],"k ")
  puts([x2,y-7*d],"None ' '",":rL")
  d=0.25
  x1=-1
  x0=-0.8
  y = -0.05
  mark([x1,5*d],"k.")
  puts([x0,y+5*d],"'.'",":rL")
  mark([x1,4*d],"k+")
  puts([x0,y+4*d],"'+'",":rL")
  mark([x1,3*d],"kx")
  puts([x0,y+3*d],"'x'",":rL")
  mark([x1,2*d],"k*")
  puts([x0,y+2*d],"'*'",":rL")
  mark([x1,d],"ks")
  puts([x0,y+d],"'s'",":rL")
  mark([x1,0],"kd")
  puts([x0,y],"'d'",":rL")
  mark([x1,-d,0],"ko")
  puts([x0,y-d],"'o'",":rL")
  mark([x1,-2*d,0],"k^")
  puts([x0,y-2*d],"'\\^'",":rL")
  mark([x1,-3*d,0],"kv")
  puts([x0,y-3*d],"'v'",":rL")
  mark([x1,-4*d,0],"k<")
  puts([x0,y-4*d],"'<'",":rL")
  mark([x1,-5*d,0],"k>")
  puts([x0,y-5*d],"'>'",":rL")
  d=0.25
  x1=-0.5
  x0=-0.3
  y = -0.05
  mark([x1,5*d],"k#.")
  puts([x0,y+5*d],"'\\#.'",":rL")
  mark([x1,4*d],"k#+")
  puts([x0,y+4*d],"'\\#+'",":rL")
  mark([x1,3*d],"k#x")
  puts([x0,y+3*d],"'\\#x'",":rL")
  mark([x1,2*d],"k#*")
  puts([x0,y+2*d],"'\\#*'",":rL")
  mark([x1,d],"k#s")
  puts([x0,y+d],"'\\#s'",":rL")
  mark([x1,0],"k#d")
  puts([x0,y],"'\\#d'",":rL")
  mark([x1,-d,0],"k#o")
  puts([x0,y-d],"'\\#o'",":rL")
  mark([x1,-2*d,0],"k#^")
  puts([x0,y-2*d],"'\\#\\^'",":rL")
  mark([x1,-3*d,0],"k#v")
  puts([x0,y-3*d],"'\\#v'",":rL")
  mark([x1,-4*d,0],"k#<")
  puts([x0,y-4*d],"'\\#<'",":rL")
  mark([x1,-5*d,0],"k#>")
  puts([x0,y-5*d],"'\\#>'",":rL")
  sub_plot(3,2,1)
  a = 0.1
  b = 0.4
  c = 0.5
  line([a,1],[b,1],"k-A")
  puts([c,1],"Style 'A' or 'A\\_'",":rL")
  line([a,0.8],[b,0.8],"k-V")
  puts([c,0.8],"Style 'V' or 'V\\_'",":rL")
  line([a,0.6],[b,0.6],"k-K")
  puts([c,0.6],"Style 'K' or 'K\\_'",":rL")
  line([a,0.4],[b,0.4],"k-I")
  puts([c,0.4],"Style 'I' or 'I\\_'",":rL")
  line([a,0.2],[b,0.2],"k-D")
  puts([c,0.2],"Style 'D' or 'D\\_'",":rL")
  line([a,0],[b,0],"k-S")
  puts([c,0],"Style 'S' or 'S\\_'",":rL")
  line([a,-0.2],[b,-0.2],"k-O")
  puts([c,-0.2],"Style 'O' or 'O\\_'",":rL")
  line([a,-0.4],[b,-0.4],"k-T")
  puts([c,-0.4],"Style 'T' or 'T\\_'",":rL")
  line([a,-0.6],[b,-0.6],"k-_")
  puts([c,-0.6],"Style '\\_' or none",":rL")
  line([a,-0.8],[b,-0.8],"k-AS")
  puts([c,-0.8],"Style 'AS'",":rL")
  line([a,-1],[b,-1],"k-_A")
  puts([c,-1],"Style '\\_A'",":rL")
  a=-1
  b=-0.7
  c=-0.6
  line([a,1],[b,1],"kAA")
  puts([c,1],"Style 'AA'",":rL")
  line([a,0.8],[b,0.8],"kVV")
  puts([c,0.8],"Style 'VV'",":rL")
  line([a,0.6],[b,0.6],"kKK")
  puts([c,0.6],"Style 'KK'",":rL")
  line([a,0.4],[b,0.4],"kII")
  puts([c,0.4],"Style 'II'",":rL")
  line([a,0.2],[b,0.2],"kDD")
  puts([c,0.2],"Style 'DD'",":rL")
  line([a,0],[b,0],"kSS")
  puts([c,0],"Style 'SS'",":rL")
  line([a,-0.2],[b,-0.2],"kOO")
  puts([c,-0.2],"Style 'OO'",":rL")
  line([a,-0.4],[b,-0.4],"kTT")
  puts([c,-0.4],"Style 'TT'",":rL")
  line([a,-0.6],[b,-0.6],"k-__")
  puts([c,-0.6],"Style '\\_\\_'",":rL")
  line([a,-0.8],[b,-0.8],"k-VA")
  puts([c,-0.8],"Style 'VA'",":rL")
  line([a,-1],[b,-1],"k-AV")
  puts([c,-1],"Style 'AV'",":rL")
  sub_plot(3,2,2)
  face_z([-1,	-1], 0.4, 0.3, "L#")
  puts([-0.8,-0.9], "", "w:C", -1.4)
  face_z([-0.6,-1], 0.4, 0.3, "E#")
  puts([-0.4,-0.9], "E", "w:C", -1.4)
  face_z([-0.2,-1], 0.4, 0.3, "N#")
  puts([0,  -0.9], "N", "w:C", -1.4)
  face_z([0.2,	-1], 0.4, 0.3, "U#")
  puts([0.4,-0.9], "U", "w:C", -1.4)
  face_z([0.6,	-1], 0.4, 0.3, "Q#")
  puts([0.8,-0.9], "Q", "w:C", -1.4)
  face_z([-1,	-0.7], 0.4, 0.3, "l#")
  puts([-0.8,-0.6], "l", "k:C", -1.4)
  face_z([-0.6,-0.7], 0.4, 0.3, "e#")
  puts([-0.4,-0.6], "e", "k:C", -1.4)
  face_z([-0.2,-0.7], 0.4, 0.3, "n#")
  puts([0,  -0.6], "n", "k:C", -1.4)
  face_z([0.2,	-0.7], 0.4, 0.3, "u#")
  puts([0.4,-0.6], "u", "k:C", -1.4)
  face_z([0.6,	-0.7], 0.4, 0.3, "q#")
  puts([0.8,-0.6], "q", "k:C", -1.4)
  face_z([-1,	-0.4], 0.4, 0.3, "C#")
  puts([-0.8,-0.3], "C", "w:C", -1.4)
  face_z([-0.6,-0.4], 0.4, 0.3, "M#")
  puts([-0.4,-0.3], "M", "w:C", -1.4)
  face_z([-0.2,-0.4], 0.4, 0.3, "Y#")
  puts([0,  -0.3], "Y", "w:C", -1.4)
  face_z([0.2,	-0.4], 0.4, 0.3, "k#")
  puts([0.4,-0.3], "k", "w:C", -1.4)
  face_z([0.6,	-0.4], 0.4, 0.3, "P#")
  puts([0.8,-0.3], "P", "w:C", -1.4)
  face_z([-1,	-0.1], 0.4, 0.3, "c#")
  puts([-0.8, 0], "c", "k:C", -1.4)
  face_z([-0.6,-0.1], 0.4, 0.3, "m#")
  puts([-0.4, 0], "m", "k:C", -1.4)
  face_z([-0.2,-0.1], 0.4, 0.3, "y#")
  puts([0,   0], "y", "k:C", -1.4)
  face_z([0.2,	-0.1], 0.4, 0.3, "w#")
  puts([0.4, 0], "w", "k:C", -1.4)
  face_z([0.6,	-0.1], 0.4, 0.3, "p#")
  puts([0.8, 0], "p", "k:C", -1.4)
  face_z([-1,	0.2], 0.4, 0.3, "B#")
  puts([-0.8, 0.3], "B", "w:C", -1.4)
  face_z([-0.6,0.2], 0.4, 0.3, "G#")
  puts([-0.4, 0.3], "G", "w:C", -1.4)
  face_z([-0.2,0.2], 0.4, 0.3, "R#")
  puts([0,   0.3], "R", "w:C", -1.4)
  face_z([0.2,	0.2], 0.4, 0.3, "H#")
  puts([0.4, 0.3], "H", "w:C", -1.4)
  face_z([0.6,	0.2], 0.4, 0.3, "W#")
  puts([0.8, 0.3], "W", "w:C", -1.4)
  face_z([-1,	0.5], 0.4, 0.3, "b#")
  puts([-0.8, 0.6], "b", "k:C", -1.4)
  face_z([-0.6,0.5], 0.4, 0.3, "g#")
  puts([-0.4, 0.6], "g", "k:C", -1.4)
  face_z([-0.2,0.5], 0.4, 0.3, "r#")
  puts([0,   0.6], "r", "k:C", -1.4)
  face_z([0.2,	0.5], 0.4, 0.3, "h#")
  puts([0.4, 0.6], "h", "k:C", -1.4)
  face_z([0.6,	0.5], 0.4, 0.3, "w#")
  puts([0.8, 0.6], "w", "k:C", -1.4)
  face_z([-1,	0.8], 0.4, 0.3, "{r1}#")
  puts([-0.8, 0.9], "\\{r1\\}", "w:C", -1.4)
  face_z([-0.6,0.8], 0.4, 0.3, "{r3}#")
  puts([-0.4, 0.9], "\\{r3\\}", "w:C", -1.4)
  face_z([-0.2,0.8], 0.4, 0.3, "{r5}#")
  puts([0,   0.9], "\\{r5\\}", "k:C", -1.4)
  face_z([0.2,	0.8], 0.4, 0.3, "{r7}#")
  puts([0.4, 0.9], "\\{r7\\}", "k:C", -1.4)
  face_z([0.6,	0.8], 0.4, 0.3, "{r9}#")
  puts([0.8, 0.9], "\\{r9\\}", "k:C", -1.4)
  face_z([-1, -1.3], 1, 0.3, "{xff9966}#")
  puts([-0.5,-1.2], "\\{xff9966\\}", "k:C", -1.4)
  face_z([0,  -1.3], 1, 0.3, "{x83CAFF}#")
  puts([ 0.5,-1.2], "\\{x83CAFF\\}", "k:C", -1.4)
  sub_plot(3,2,3)
  stl = "r1"
  txt = "'1'"
  for i in 0...10
    txt[1]=stl[1]='%d'%i
    line([-1,0.2*i-1],[1,0.2*i-1],stl)
    puts([1.05,0.2*i-1],txt,":")
  end
  sub_plot(3,2,4)
  title("TriPlot sample")
  rotate(50,60)
  t = [0,1,2, 0,1,3, 0,2,3, 1,2,3]
  xt = [-1,1,0,0]
  yt = [-1,-1,1,0]
  zt = [-1,-1,-1,1]
  tt = MathGL::MglData.new(t,4,3)
  uu = MathGL::MglData.new(xt)
  vv = MathGL::MglData.new(yt)
  ww = MathGL::MglData.new(zt)
  tri_plot(tt,uu,vv,ww,"b")
  tri_plot(tt,uu,vv,ww,"k#")
  sub_plot(3,2,5)
  r = MathGL::MglData.new(4)
  r.fill(1,4)
  set_ranges(1,4,1,4)
  axis()
  mark(r,r,"s")
  plot(r,"b")
  write_jpeg("fexport.jpg")
  write_png("fexport.png")
  write_bmp("fexport.bmp")
  write_tga("fexport.tga")
  write_eps("fexport.eps")
  write_svg("fexport.svg")
  write_gif("fexport.gif")
  write_xyz("fexport.xyz")
  write_stl("fexport.stl")
  write_off("fexport.off")
  write_tex("fexport.tex")
  write_obj("fexport.obj")
  write_prc("fexport.prc")
end

# void smgl_data1(mglGraph *gr)
# {
# 	mglData a(40,50,60),b;	gr->Fill(a,"exp(-x^2-4*y^2-16*z^2)");
# 	gr->Light(true);		gr->Alpha(true);
# 	b.Set(a);	b.Diff("x");	gr->SubPlot(5,3,0);	splot1(b);
# 	b.Set(a);	b.Diff2("x");	gr->SubPlot(5,3,1);	splot1(b);
# 	b.Set(a);	b.CumSum("x");	gr->SubPlot(5,3,2);	splot1(b);
# 	b.Set(a);	b.Integral("x");gr->SubPlot(5,3,3);	splot1(b);
# 	b.Mirror("x");	gr->SubPlot(5,3,4);	splot1(b);
# 	b.Set(a);	b.Diff("y");	gr->SubPlot(5,3,5);	splot1(b);
# 	b.Set(a);	b.Diff2("y");	gr->SubPlot(5,3,6);	splot1(b);
# 	b.Set(a);	b.CumSum("y");	gr->SubPlot(5,3,7);	splot1(b);
# 	b.Set(a);	b.Integral("y");gr->SubPlot(5,3,8);	splot1(b);
# 	b.Mirror("y");	gr->SubPlot(5,3,9);	splot1(b);
# 	b.Set(a);	b.Diff("z");	gr->SubPlot(5,3,10);splot1(b);
# 	b.Set(a);	b.Diff2("z");	gr->SubPlot(5,3,11);splot1(b);
# 	b.Set(a);	b.CumSum("z");	gr->SubPlot(5,3,12);splot1(b);
# 	b.Set(a);	b.Integral("z");gr->SubPlot(5,3,13);splot1(b);
# 	b.Mirror("z");	gr->SubPlot(5,3,14);splot1(b);
# }
procs['data1'] = proc do
  a = MathGL::MglData.new(40,50,60)
  b = MathGL::MglData.new
  fill(a,"exp(-x^2-4*y^2-16*z^2)")
  light(true)
  alpha(true)
  b.set(a)
  b.diff("x")
  sub_plot(5,3,0)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff2("x")
  sub_plot(5,3,1)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.cum_sum("x")
  sub_plot(5,3,2)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.integral("x")
  sub_plot(5,3,3)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.mirror("x")
  sub_plot(5,3,4)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff("y")
  sub_plot(5,3,5)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff2("y")
  sub_plot(5,3,6)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.cum_sum("y")
  sub_plot(5,3,7)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.integral("y")
  sub_plot(5,3,8)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.mirror("y")
  sub_plot(5,3,9)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff("z")
  sub_plot(5,3,10)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff2("z")
  sub_plot(5,3,11)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.cum_sum("z")
  sub_plot(5,3,12)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.integral("z")
  sub_plot(5,3,13)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.mirror("z")
  sub_plot(5,3,14)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
end

# void smgl_data2(mglGraph *gr)
# {
# 	mglData a(40,50,60),b;	gr->Fill(a,"exp(-x^2-4*y^2-16*z^2)");
# 	gr->Light(true);		gr->Alpha(true);
# 	b.Set(a);	b.SinFFT("x");	gr->SubPlot(5,3,0);	splot2(b);
# 	b.Set(a);	b.CosFFT("x");	gr->SubPlot(5,3,1);	splot2(b);
# 	b.Set(a);	b.Hankel("x");	gr->SubPlot(5,3,2);	splot2(b);
# 	b.Set(a);	b.Swap("x");	gr->SubPlot(5,3,3);	splot2(b);
# 	b.Set(a);	b.Smooth("x");	gr->SubPlot(5,3,4);	splot2(b);
# 	b.Set(a);	b.SinFFT("y");	gr->SubPlot(5,3,5);	splot2(b);
# 	b.Set(a);	b.CosFFT("y");	gr->SubPlot(5,3,6);	splot2(b);
# 	b.Set(a);	b.Hankel("y");	gr->SubPlot(5,3,7);	splot2(b);
# 	b.Set(a);	b.Swap("y");	gr->SubPlot(5,3,8);	splot2(b);
# 	b.Set(a);	b.Smooth("y");	gr->SubPlot(5,3,9);	splot2(b);
# 	b.Set(a);	b.SinFFT("z");	gr->SubPlot(5,3,10);splot2(b);
# 	b.Set(a);	b.CosFFT("z");	gr->SubPlot(5,3,11);splot2(b);
# 	b.Set(a);	b.Hankel("z");	gr->SubPlot(5,3,12);splot2(b);
# 	b.Set(a);	b.Swap("z");	gr->SubPlot(5,3,13);splot2(b);
# 	b.Set(a);	b.Smooth("z");	gr->SubPlot(5,3,14);splot2(b);
# }
procs['data2'] = proc do
  a = MathGL::MglData.new(40,50,60)
  b = MathGL::MglData.new
  fill(a,"exp(-x^2-4*y^2-16*z^2)")
  light(true)
  alpha(true)
  b.set(a)
  b.sin_fft("x")
  sub_plot(5,3,0)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.cos_fft("x")
  sub_plot(5,3,1)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.hankel("x")
  sub_plot(5,3,2)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.swap("x")
  sub_plot(5,3,3)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.smooth("x")
  sub_plot(5,3,4)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.sin_fft("y")
  sub_plot(5,3,5)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.cos_fft("y")
  sub_plot(5,3,6)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.hankel("y")
  sub_plot(5,3,7)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.swap("y")
  sub_plot(5,3,8)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.smooth("y")
  sub_plot(5,3,9)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.sin_fft("z")
  sub_plot(5,3,10)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.cos_fft("z")
  sub_plot(5,3,11)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.hankel("z")
  sub_plot(5,3,12)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.swap("z")
  sub_plot(5,3,13)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.smooth("z")
  sub_plot(5,3,14)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
end

# void smgl_param1(mglGraph *gr)
# {
# 	mglData x(100), y(100), z(100), c(100);
# 	gr->Fill(x,"sin(pi*x)");	gr->Fill(y,"cos(pi*x)");
# 	gr->Fill(z,"sin(2*pi*x)");	gr->Fill(c,"cos(2*pi*x)");
#
# 	gr->SubPlot(4,3,0);	gr->Rotate(40,60);	gr->Box();	gr->Plot(x,y,z);
# 	gr->SubPlot(4,3,1);	gr->Rotate(40,60);	gr->Box();	gr->Area(x,y,z);
# 	gr->SubPlot(4,3,2);	gr->Rotate(40,60);	gr->Box();	gr->Tens(x,y,z,c);
# 	gr->SubPlot(4,3,3);	gr->Rotate(40,60);	gr->Box();	gr->Bars(x,y,z);
# 	gr->SubPlot(4,3,4);	gr->Rotate(40,60);	gr->Box();	gr->Stem(x,y,z);
# 	gr->SubPlot(4,3,5);	gr->Rotate(40,60);	gr->Box();	gr->TextMark(x,y,z,"\\alpha");
# 	gr->SubPlot(4,3,6);	gr->Rotate(40,60);	gr->Box();	gr->Tube(x,y,z,c/10,"","light on");
# 	gr->SubPlot(4,3,7);	gr->Rotate(40,60);	gr->Box();	gr->Mark(x,y,z,c,"s");
# 	gr->SubPlot(4,3,8);	gr->Rotate(40,60);	gr->Box();	gr->Error(x,y,z/10,c/10);
# 	gr->SubPlot(4,3,9);	gr->Rotate(40,60);	gr->Box();	gr->Step(x,y,z);
# 	gr->SubPlot(4,3,10);gr->Rotate(40,60);	gr->Box();	gr->Torus(x,z,"z","light on");
# 	gr->SubPlot(4,3,11);gr->Rotate(40,60);	gr->Box();	gr->Label(x,y,z,"%z");
# }
procs['param1'] = proc do
  x = MathGL::MglData.new(100)
  y = MathGL::MglData.new(100)
  z = MathGL::MglData.new(100)
  c = MathGL::MglData.new(100)
  fill(x,"sin(pi*x)")
  fill(y,"cos(pi*x)")
  fill(z,"sin(2*pi*x)")
  fill(c,"cos(2*pi*x)")
  sub_plot(4,3,0)
  rotate(40,60)
  box()
  plot(x,y,z)
  sub_plot(4,3,1)
  rotate(40,60)
  box()
  area(x,y,z)
  sub_plot(4,3,2)
  rotate(40,60)
  box()
  tens(x,y,z,c)
  sub_plot(4,3,3)
  rotate(40,60)
  box()
  bars(x,y,z)
  sub_plot(4,3,4)
  rotate(40,60)
  box()
  stem(x,y,z)
  sub_plot(4,3,5)
  rotate(40,60)
  box()
  text_mark(x,y,z,"\\alpha")
  sub_plot(4,3,6)
  rotate(40,60)
  box()
  tube(x,y,z,c/10,"","light on")
  sub_plot(4,3,7)
  rotate(40,60)
  box()
  mark(x,y,z,c,"s")
  sub_plot(4,3,8)
  rotate(40,60)
  box()
  error(x,y,z/10,c/10)
  sub_plot(4,3,9)
  rotate(40,60)
  box()
  step(x,y,z)
  sub_plot(4,3,10)
  rotate(40,60)
  box()
  torus(x,z,"z","light on")
  sub_plot(4,3,11)
  rotate(40,60)
  box()
  label(x,y,z,"%z")
end

# void smgl_param2(mglGraph *gr)
# {
# 	mglData x(100,100), y(100,100), z(100,100), c(100,100);
# 	gr->Fill(x,"sin(pi*(x+y)/2)*cos(pi*y/2)");	gr->Fill(y,"cos(pi*(x+y)/2)*cos(pi*y/2)");
# 	gr->Fill(z,"sin(pi*y/2)");	gr->Fill(c,"cos(pi*x)");
#
# 	gr->SubPlot(4,4,0);	gr->Rotate(40,60);	gr->Box();	gr->Surf(x,y,z);
# 	gr->SubPlot(4,4,1);	gr->Rotate(40,60);	gr->Box();	gr->SurfC(x,y,z,c);
# 	gr->SubPlot(4,4,2);	gr->Rotate(40,60);	gr->Box();	gr->SurfA(x,y,z,c,"","alpha 1");
# 	gr->SubPlot(4,4,3);	gr->Rotate(40,60);	gr->Box();	gr->Mesh(x,y,z,"","meshnum 10");
# 	gr->SubPlot(4,4,4);	gr->Rotate(40,60);	gr->Box();	gr->Tile(x,y,z,"","meshnum 10");
# 	gr->SubPlot(4,4,5);	gr->Rotate(40,60);	gr->Box();	gr->TileS(x,y,z,c,"","meshnum 10");
# 	gr->SubPlot(4,4,6);	gr->Rotate(40,60);	gr->Box();	gr->Axial(x,y,z,"","alpha 0.5;light on");
# 	gr->SubPlot(4,4,7);	gr->Rotate(40,60);	gr->Box();	gr->Cont(x,y,z);
# 	gr->SubPlot(4,4,8);	gr->Rotate(40,60);	gr->Box();	gr->ContF(x,y,z,"","light on");	gr->ContV(x,y,z,"","light on");
# 	gr->SubPlot(4,4,9);	gr->Rotate(40,60);	gr->Box();	gr->Belt(x,y,z,"x","meshnum 10;light on");
# 	gr->SubPlot(4,4,10);gr->Rotate(40,60);	gr->Box();	gr->Dens(x,y,z,"","alpha 0.5");
# 	gr->SubPlot(4,4,11);gr->Rotate(40,60);	gr->Box();
# 	gr->Fall(x,y,z,"g","meshnum 10");	gr->Fall(x,y,z,"rx","meshnum 10");
# 	gr->SubPlot(4,4,12);	gr->Rotate(40,60);	gr->Box();	gr->Belt(x,y,z,"","meshnum 10;light on");
# 	gr->SubPlot(4,4,13);	gr->Rotate(40,60);	gr->Box();	gr->Boxs(x,y,z,"","meshnum 10;light on");
# 	gr->SubPlot(4,4,14);	gr->Rotate(40,60);	gr->Box();	gr->Boxs(x,y,z,"#","meshnum 10");
# 	gr->SubPlot(4,4,15);	gr->Rotate(40,60);	gr->Box();	gr->Boxs(x,y,z,"@","meshnum 10;light on");
# }
procs['param2'] = proc do
  x = MathGL::MglData.new(100,100)
  y = MathGL::MglData.new(100,100)
  z = MathGL::MglData.new(100,100)
  c = MathGL::MglData.new(100,100)
  fill(x,"sin(pi*(x+y)/2)*cos(pi*y/2)")
  fill(y,"cos(pi*(x+y)/2)*cos(pi*y/2)")
  fill(z,"sin(pi*y/2)")
  fill(c,"cos(pi*x)")
  sub_plot(4,4,0)
  rotate(40,60)
  box()
  surf(x,y,z)
  sub_plot(4,4,1)
  rotate(40,60)
  box()
  surf_c(x,y,z,c)
  sub_plot(4,4,2)
  rotate(40,60)
  box()
  surf_a(x,y,z,c,"","alpha 1")
  sub_plot(4,4,3)
  rotate(40,60)
  box()
  mesh(x,y,z,"","meshnum 10")
  sub_plot(4,4,4)
  rotate(40,60)
  box()
  tile(x,y,z,"","meshnum 10")
  sub_plot(4,4,5)
  rotate(40,60)
  box()
  tile_s(x,y,z,c,"","meshnum 10")
  sub_plot(4,4,6)
  rotate(40,60)
  box()
  axial(x,y,z,"","alpha 0.5;light on")
  sub_plot(4,4,7)
  rotate(40,60)
  box()
  cont(x,y,z)
  sub_plot(4,4,8)
  rotate(40,60)
  box()
  cont_f(x,y,z,"","light on")
  cont_v(x,y,z,"","light on")
  sub_plot(4,4,9)
  rotate(40,60)
  box()
  belt(x,y,z,"x","meshnum 10;light on")
  sub_plot(4,4,10)
  rotate(40,60)
  box()
  dens(x,y,z,"","alpha 0.5")
  sub_plot(4,4,11)
  rotate(40,60)
  box()
  fall(x,y,z,"g","meshnum 10")
  fall(x,y,z,"rx","meshnum 10")
  sub_plot(4,4,12)
  rotate(40,60)
  box()
  belt(x,y,z,"","meshnum 10;light on")
  sub_plot(4,4,13)
  rotate(40,60)
  box()
  boxs(x,y,z,"","meshnum 10;light on")
  sub_plot(4,4,14)
  rotate(40,60)
  box()
  boxs(x,y,z,"#","meshnum 10")
  sub_plot(4,4,15)
  rotate(40,60)
  box()
  boxs(x,y,z,"@","meshnum 10;light on")
end

# void smgl_param3(mglGraph *gr)
# {
# 	mglData x(50,50,50), y(50,50,50), z(50,50,50), c(50,50,50), d(50,50,50);
# 	gr->Fill(x,"(x+2)/3*sin(pi*y/2)");	gr->Fill(y,"(x+2)/3*cos(pi*y/2)");	gr->Fill(z,"z");
# 	gr->Fill(c,"-2*(x^2+y^2+z^4-z^2)+0.2");	gr->Fill(d,"1-2*tanh(2*(x+y)^2)");
#
# 	gr->Light(true);	gr->Alpha(true);
# 	gr->SubPlot(4,3,0);	gr->Rotate(40,60);	gr->Box();	gr->Surf3(x,y,z,c);
# 	gr->SubPlot(4,3,1);	gr->Rotate(40,60);	gr->Box();	gr->Surf3C(x,y,z,c,d);
# 	gr->SubPlot(4,3,2);	gr->Rotate(40,60);	gr->Box();	gr->Surf3A(x,y,z,c,d);
# 	gr->SubPlot(4,3,3);	gr->Rotate(40,60);	gr->Box();	gr->Cloud(x,y,z,c);
# 	gr->SubPlot(4,3,4);	gr->Rotate(40,60);	gr->Box();	gr->Cont3(x,y,z,c);	gr->Cont3(x,y,z,c,"x");	gr->Cont3(x,y,z,c,"z");
# 	gr->SubPlot(4,3,5);	gr->Rotate(40,60);	gr->Box();	gr->ContF3(x,y,z,c);gr->ContF3(x,y,z,c,"x");gr->ContF3(x,y,z,c,"z");
# 	gr->SubPlot(4,3,6);	gr->Rotate(40,60);	gr->Box();	gr->Dens3(x,y,z,c);	gr->Dens3(x,y,z,c,"x");	gr->Dens3(x,y,z,c,"z");
# 	gr->SubPlot(4,3,7);	gr->Rotate(40,60);	gr->Box();	gr->Dots(x,y,z,c,"","meshnum 15");
# 	gr->SubPlot(4,3,8);	gr->Rotate(40,60);	gr->Box();	gr->DensX(c,"",0);	gr->DensY(c,"",0);	gr->DensZ(c,"",0);
# 	gr->SubPlot(4,3,9);	gr->Rotate(40,60);	gr->Box();	gr->ContX(c,"",0);	gr->ContY(c,"",0);	gr->ContZ(c,"",0);
# 	gr->SubPlot(4,3,10);gr->Rotate(40,60);	gr->Box();	gr->ContFX(c,"",0);	gr->ContFY(c,"",0);	gr->ContFZ(c,"",0);
# }
procs['param3'] = proc do
  x = MathGL::MglData.new(50,50,50)
  y = MathGL::MglData.new(50,50,50)
  z = MathGL::MglData.new(50,50,50)
  c = MathGL::MglData.new(50,50,50)
  d = MathGL::MglData.new(50,50,50)
  fill(x,"(x+2)/3*sin(pi*y/2)")
  fill(y,"(x+2)/3*cos(pi*y/2)")
  fill(z,"z")
  fill(c,"-2*(x^2+y^2+z^4-z^2)+0.2")
  fill(d,"1-2*tanh(2*(x+y)^2)")
  light(true)
  alpha(true)
  sub_plot(4,3,0)
  rotate(40,60)
  box()
  surf3(x,y,z,c)
  sub_plot(4,3,1)
  rotate(40,60)
  box()
  surf_3c(x,y,z,c,d)
  sub_plot(4,3,2)
  rotate(40,60)
  box()
  surf_3a(x,y,z,c,d)
  sub_plot(4,3,3)
  rotate(40,60)
  box()
  cloud(x,y,z,c)
  sub_plot(4,3,4)
  rotate(40,60)
  box()
  cont3(x,y,z,c)
  cont3(x,y,z,c,"x")
  cont3(x,y,z,c,"z")
  sub_plot(4,3,5)
  rotate(40,60)
  box()
  cont_f3(x,y,z,c)
  cont_f3(x,y,z,c,"x")
  cont_f3(x,y,z,c,"z")
  sub_plot(4,3,6)
  rotate(40,60)
  box()
  dens3(x,y,z,c)
  dens3(x,y,z,c,"x")
  dens3(x,y,z,c,"z")
  sub_plot(4,3,7)
  rotate(40,60)
  box()
  dots(x,y,z,c,"","meshnum 15")
  sub_plot(4,3,8)
  rotate(40,60)
  box()
  dens_x(c,"",0)
  dens_y(c,"",0)
  dens_z(c,"",0)
  sub_plot(4,3,9)
  rotate(40,60)
  box()
  cont_x(c,"",0)
  cont_y(c,"",0)
  cont_z(c,"",0)
  sub_plot(4,3,10)
  rotate(40,60)
  box()
  cont_fx(c,"",0)
  cont_fy(c,"",0)
  cont_fz(c,"",0)
end

# void smgl_paramv(mglGraph *gr)
# {
# 	mglData x(20,20,20), y(20,20,20), z(20,20,20), ex(20,20,20), ey(20,20,20), ez(20,20,20);
# 	gr->Fill(x,"(x+2)/3*sin(pi*y/2)");	gr->Fill(y,"(x+2)/3*cos(pi*y/2)");	gr->Fill(z,"x+z");
# 	gr->Fill(ex,"x");	gr->Fill(ey,"x^2+y");	gr->Fill(ez,"y^2+z");
# 	mglData x1(20,20), y1(20,20), e1(20,20), e2(20,20);
# 	gr->Fill(x1,"(x+2)/3*sin(pi*y/2)");	gr->Fill(y1,"(x+2)/3*cos(pi*y/2)");
# 	gr->Fill(e1,"x");	gr->Fill(e2,"x^2+y");
#
# 	gr->SubPlot(3,3,0);	gr->Rotate(40,60);	gr->Box();	gr->Vect(x1,y1,e1,e2);
# 	gr->SubPlot(3,3,1);	gr->Rotate(40,60);	gr->Box();	gr->Flow(x1,y1,e1,e2);
# 	gr->SubPlot(3,3,2);	gr->Rotate(40,60);	gr->Box();	gr->Pipe(x1,y1,e1,e2);
# 	gr->SubPlot(3,3,3);	gr->Rotate(40,60);	gr->Box();	gr->Dew(x1,y1,e1,e2);
# 	gr->SubPlot(3,3,4);	gr->Rotate(40,60);	gr->Box();	gr->Vect(x,y,z,ex,ey,ez);
# 	gr->SubPlot(3,3,5);	gr->Rotate(40,60);	gr->Box();
# 	gr->Vect3(x,y,z,ex,ey,ez);	gr->Vect3(x,y,z,ex,ey,ez,"x");	gr->Vect3(x,y,z,ex,ey,ez,"z");
# 	gr->Grid3(x,y,z,z,"{r9}");	gr->Grid3(x,y,z,z,"{r9}x");		gr->Grid3(x,y,z,z,"{r9}z");
# 	gr->SubPlot(3,3,6);	gr->Rotate(40,60);	gr->Box();	gr->Flow(x,y,z,ex,ey,ez);
# 	gr->SubPlot(3,3,7);	gr->Rotate(40,60);	gr->Box();	gr->Pipe(x,y,z,ex,ey,ez);
# }
procs['paramv'] = proc do
  x = MathGL::MglData.new(20,20,20)
  y = MathGL::MglData.new(20,20,20)
  z = MathGL::MglData.new(20,20,20)
  ex = MathGL::MglData.new(20,20,20)
  ey = MathGL::MglData.new(20,20,20)
  ez = MathGL::MglData.new(20,20,20)
  fill(x,"(x+2)/3*sin(pi*y/2)")
  fill(y,"(x+2)/3*cos(pi*y/2)")
  fill(z,"x+z")
  fill(ex,"x")
  fill(ey,"x^2+y")
  fill(ez,"y^2+z")
  x1 = MathGL::MglData.new(20,20)
  y1 = MathGL::MglData.new(20,20)
  e1 = MathGL::MglData.new(20,20)
  e2 = MathGL::MglData.new(20,20)
  fill(x1,"(x+2)/3*sin(pi*y/2)")
  fill(y1,"(x+2)/3*cos(pi*y/2)")
  fill(e1,"x")
  fill(e2,"x^2+y")
  sub_plot(3,3,0)
  rotate(40,60)
  box()
  vect(x1,y1,e1,e2)
  sub_plot(3,3,1)
  rotate(40,60)
  box()
  flow(x1,y1,e1,e2)
  sub_plot(3,3,2)
  rotate(40,60)
  box()
  pipe(x1,y1,e1,e2)
  sub_plot(3,3,3)
  rotate(40,60)
  box()
  dew(x1,y1,e1,e2)
  sub_plot(3,3,4)
  rotate(40,60)
  box()
  vect(x,y,z,ex,ey,ez)
  sub_plot(3,3,5)
  rotate(40,60)
  box()
  vect3(x,y,z,ex,ey,ez)
  vect3(x,y,z,ex,ey,ez,"x")
  vect3(x,y,z,ex,ey,ez,"z")
  grid3(x,y,z,z,"{r9}")
  grid3(x,y,z,z,"{r9}x")
  grid3(x,y,z,z,"{r9}z")
  sub_plot(3,3,6)
  rotate(40,60)
  box()
  flow(x,y,z,ex,ey,ez)
  sub_plot(3,3,7)
  rotate(40,60)
  box()
  pipe(x,y,z,ex,ey,ez)
end

# void smgl_solve(mglGraph *gr)
# {
# 	gr->SetRange('z',0,1);
# 	mglData x(20,30), y(20,30), z(20,30), xx,yy,zz;
# 	gr->Fill(x,"(x+2)/3*cos(pi*y)");
# 	gr->Fill(y,"(x+2)/3*sin(pi*y)");
# 	gr->Fill(z,"exp(-6*x^2-2*sin(pi*y)^2)");
#
# 	gr->SubPlot(2,1,0);	gr->Title("Cartesian space");	gr->Rotate(30,-40);
# 	gr->Axis("xyzU");	gr->Box();	gr->Label('x',"x");	gr->Label('y',"y");
# 	gr->SetOrigin(1,1);	gr->Grid("xy");
# 	gr->Mesh(x,y,z);
#
#
# 	mglData u = x.Solve(0.5,'x');
# 	mglData v(u.nx);	v.Fill(0,1);
# 	xx = x.Evaluate(u,v);	yy = y.Evaluate(u,v);	zz = z.Evaluate(u,v);
# 	gr->Plot(xx,yy,zz,"k2o");
#
#
# 	mglData u1 = x.Solve(-0.5,'y');
# 	mglData v1(u1.nx);	v1.Fill(0,1);
# 	xx = x.Evaluate(v1,u1);	yy = y.Evaluate(v1,u1);	zz = z.Evaluate(v1,u1);
# 	gr->Plot(xx,yy,zz,"b2^");
#
#
# 	mglData u2 = x.Solve(-0.5,'y',u1);
# 	xx = x.Evaluate(v1,u2);	yy = y.Evaluate(v1,u2);	zz = z.Evaluate(v1,u2);
# 	gr->Plot(xx,yy,zz,"r2v");
#
# 	gr->SubPlot(2,1,1);	gr->Title("Accompanied space");
# 	gr->SetRanges(0,1,0,1);	gr->SetOrigin(0,0);
# 	gr->Axis();	gr->Box();	gr->Label('x',"i");	gr->Label('y',"j");
# 	gr->Grid(z,"h");
#
# 	gr->Plot(u,v,"k2o");	gr->Line(mglPoint(0.4,0.5),mglPoint(0.8,0.5),"kA");
# 	gr->Plot(v1,u1,"b2^");	gr->Line(mglPoint(0.5,0.15),mglPoint(0.5,0.3),"bA");
# 	gr->Plot(v1,u2,"r2v");	gr->Line(mglPoint(0.5,0.7),mglPoint(0.5,0.85),"rA");
# }
procs['solve'] = proc do
  set_range('z',0,1)
  x = MathGL::MglData.new(20,30)
  y = MathGL::MglData.new(20,30)
  z = MathGL::MglData.new(20,30)
  xx = MathGL::MglData.new
  yy = MathGL::MglData.new
  zz = MathGL::MglData.new
  fill(x,"(x+2)/3*cos(pi*y)")
  fill(y,"(x+2)/3*sin(pi*y)")
  fill(z,"exp(-6*x^2-2*sin(pi*y)^2)")
  sub_plot(2,1,0)
  title("Cartesian space")
  rotate(30,-40)
  axis("xyzU")
  box()
  label('x',"x")
  label('y',"y")
  set_origin(1,1)
  grid("xy")
  mesh(x,y,z)
  u = x.solve(0.5,'x')
  v = MathGL::MglData.new(u.nx)
  v.fill(0,1)
  xx = x.evaluate(u,v)
  yy = y.evaluate(u,v)
  zz = z.evaluate(u,v)
  plot(xx,yy,zz,"k2o")
  u1 = x.solve(-0.5,'y')
  v1 = MathGL::MglData.new(u1.nx)
  v1.fill(0,1)
  xx = x.evaluate(v1,u1)
  yy = y.evaluate(v1,u1)
  zz = z.evaluate(v1,u1)
  plot(xx,yy,zz,"b2^")
  u2 = x.solve(-0.5,'y',u1)
  xx = x.evaluate(v1,u2)
  yy = y.evaluate(v1,u2)
  zz = z.evaluate(v1,u2)
  plot(xx,yy,zz,"r2v")
  sub_plot(2,1,1)
  title("Accompanied space")
  set_ranges(0,1,0,1)
  set_origin(0,0)
  axis()
  box()
  label('x',"i")
  label('y',"j")
  grid(z,"h")
  plot(u,v,"k2o")
  line([0.4,0.5],[0.8,0.5],"kA")
  plot(v1,u1,"b2^")
  line([0.5,0.15],[0.5,0.3],"bA")
  plot(v1,u2,"r2v")
  line([0.5,0.7],[0.5,0.85],"rA")
end

# void smgl_triangulation(mglGraph *gr)
# {
# 	mglData x(100), y(100), z(100);
# 	gr->Fill(x,"2*rnd-1");	gr->Fill(y,"2*rnd-1");	gr->Fill(z,"v^2-w^2",x,y);
# 	mglData d = mglTriangulation(x,y), g(30,30);
#
# 	if(!mini)	gr->Title("Triangulation");
# 	gr->Rotate(40,60);	gr->Box();	gr->Light(true);
# 	gr->TriPlot(d,x,y,z);	gr->TriPlot(d,x,y,z,"#k");
#
# 	gr->DataGrid(g,x,y,z);	gr->Mesh(g,"m");
# }
procs['triangulation'] = proc do
  x = MathGL::MglData.new(100)
  y = MathGL::MglData.new(100)
  z = MathGL::MglData.new(100)
  fill(x,"2*rnd-1")
  fill(y,"2*rnd-1")
  fill(z,"v^2-w^2",x,y)
  d = MathGL.mgl_triangulation(x,y)
  g = MathGL::MglData.new(30,30)
  if !$mini
    title("Triangulation")
  end
  rotate(40,60)
  box()
  light(true)
  tri_plot(d,x,y,z)
  tri_plot(d,x,y,z,"#k")
  data_grid(g,x,y,z)
  mesh(g,"m")
end

# void smgl_alpha(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	gr->SubPlot(2,2,0);	gr->Title("default");	gr->Rotate(50,60);
# 	gr->Box();	gr->Surf(a);
# 	gr->SubPlot(2,2,1);	gr->Title("light on");	gr->Rotate(50,60);
# 	gr->Box();	gr->Light(true);	gr->Surf(a);
# 	gr->SubPlot(2,2,3);	gr->Title("alpha on; light on");	gr->Rotate(50,60);
# 	gr->Box();	gr->Alpha(true);	gr->Surf(a);
# 	gr->SubPlot(2,2,2);	gr->Title("alpha on");	gr->Rotate(50,60);
# 	gr->Box();	gr->Light(false);	gr->Surf(a);
# }
procs['alpha'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  sub_plot(2,2,0)
  title("default")
  rotate(50,60)
  box()
  surf(a)
  sub_plot(2,2,1)
  title("light on")
  rotate(50,60)
  box()
  light(true)
  surf(a)
  sub_plot(2,2,3)
  title("alpha on; light on")
  rotate(50,60)
  box()
  alpha(true)
  surf(a)
  sub_plot(2,2,2)
  title("alpha on")
  rotate(50,60)
  box()
  light(false)
  surf(a)
end

# void smgl_schemes(mglGraph *gr)
# {
# 	mglData a(256,2);	a.Fill(-1,1);
# 	gr->SubPlot(2,10,0,NULL,0.2);	gr->Dens(a,"kw");		gr->Puts(0.07, 0.92, "'kw'", "A");
# 	gr->SubPlot(2,10,1,NULL,0.2);	gr->Dens(a,"wk");		gr->Puts(0.57, 0.92, "'wk'", "A");
# 	gr->SubPlot(2,10,2,NULL,0.2);	gr->Dens(a,"kHCcw");	gr->Puts(0.07, 0.82, "'kHCcw'", "A");
# 	gr->SubPlot(2,10,3,NULL,0.2);	gr->Dens(a,"kBbcw");	gr->Puts(0.57, 0.82, "'kBbcw'", "A");
# 	gr->SubPlot(2,10,4,NULL,0.2);	gr->Dens(a,"kRryw");	gr->Puts(0.07, 0.72, "'kRryw'", "A");
# 	gr->SubPlot(2,10,5,NULL,0.2);	gr->Dens(a,"kGgew");	gr->Puts(0.57, 0.72, "'kGgew'", "A");
# 	gr->SubPlot(2,10,6,NULL,0.2);	gr->Dens(a,"BbwrR");	gr->Puts(0.07, 0.62, "'BbwrR'", "A");
# 	gr->SubPlot(2,10,7,NULL,0.2);	gr->Dens(a,"BbwgG");	gr->Puts(0.57, 0.62, "'BbwgG'", "A");
# 	gr->SubPlot(2,10,8,NULL,0.2);	gr->Dens(a,"GgwmM");	gr->Puts(0.07, 0.52, "'GgwmM'", "A");
# 	gr->SubPlot(2,10,9,NULL,0.2);	gr->Dens(a,"UuwqR");	gr->Puts(0.57, 0.52, "'UuwqR'", "A");
# 	gr->SubPlot(2,10,10,NULL,0.2);	gr->Dens(a,"QqwcC");	gr->Puts(0.07, 0.42, "'QqwcC'", "A");
# 	gr->SubPlot(2,10,11,NULL,0.2);	gr->Dens(a,"CcwyY");	gr->Puts(0.57, 0.42, "'CcwyY'", "A");
# 	gr->SubPlot(2,10,12,NULL,0.2);	gr->Dens(a,"bcwyr");	gr->Puts(0.07, 0.32, "'bcwyr'", "A");
# 	gr->SubPlot(2,10,13,NULL,0.2);	gr->Dens(a,"bwr");		gr->Puts(0.57, 0.32, "'bwr'", "A");
# 	gr->SubPlot(2,10,14,NULL,0.2);	gr->Dens(a,"BbcyrR");	gr->Puts(0.07, 0.22, "'BbcyrR'", "A");
# 	gr->SubPlot(2,10,15,NULL,0.2);	gr->Dens(a,"UbcyqR");	gr->Puts(0.57, 0.22, "'UbcyqR'", "A");
# 	gr->SubPlot(2,10,16,NULL,0.2);	gr->Dens(a,"BbcwyrR");	gr->Puts(0.07, 0.12, "'BbcwyrR'", "A");
# 	gr->SubPlot(2,10,17,NULL,0.2);	gr->Dens(a,"bgr");		gr->Puts(0.57, 0.12, "'bgr'", "A");
# 	gr->SubPlot(2,10,18,NULL,0.2);	gr->Dens(a,"BbcyrR|");	gr->Puts(0.07, 0.02, "'BbcyrR|'", "A");
# 	gr->SubPlot(2,10,19,NULL,0.2);	gr->Dens(a,"b{g,0.3}r");		gr->Puts(0.57, 0.02, "'b\\{g,0.3\\}r'", "A");
# }
procs['schemes'] = proc do
  a = MathGL::MglData.new(256,2)
  a.fill(-1,1)
  sub_plot(2,10,0,NULL,0.2)
  dens(a,"kw")
  puts(0.07, 0.92, "'kw'", "A")
  sub_plot(2,10,1,NULL,0.2)
  dens(a,"wk")
  puts(0.57, 0.92, "'wk'", "A")
  sub_plot(2,10,2,NULL,0.2)
  dens(a,"kHCcw")
  puts(0.07, 0.82, "'kHCcw'", "A")
  sub_plot(2,10,3,NULL,0.2)
  dens(a,"kBbcw")
  puts(0.57, 0.82, "'kBbcw'", "A")
  sub_plot(2,10,4,NULL,0.2)
  dens(a,"kRryw")
  puts(0.07, 0.72, "'kRryw'", "A")
  sub_plot(2,10,5,NULL,0.2)
  dens(a,"kGgew")
  puts(0.57, 0.72, "'kGgew'", "A")
  sub_plot(2,10,6,NULL,0.2)
  dens(a,"BbwrR")
  puts(0.07, 0.62, "'BbwrR'", "A")
  sub_plot(2,10,7,NULL,0.2)
  dens(a,"BbwgG")
  puts(0.57, 0.62, "'BbwgG'", "A")
  sub_plot(2,10,8,NULL,0.2)
  dens(a,"GgwmM")
  puts(0.07, 0.52, "'GgwmM'", "A")
  sub_plot(2,10,9,NULL,0.2)
  dens(a,"UuwqR")
  puts(0.57, 0.52, "'UuwqR'", "A")
  sub_plot(2,10,10,NULL,0.2)
  dens(a,"QqwcC")
  puts(0.07, 0.42, "'QqwcC'", "A")
  sub_plot(2,10,11,NULL,0.2)
  dens(a,"CcwyY")
  puts(0.57, 0.42, "'CcwyY'", "A")
  sub_plot(2,10,12,NULL,0.2)
  dens(a,"bcwyr")
  puts(0.07, 0.32, "'bcwyr'", "A")
  sub_plot(2,10,13,NULL,0.2)
  dens(a,"bwr")
  puts(0.57, 0.32, "'bwr'", "A")
  sub_plot(2,10,14,NULL,0.2)
  dens(a,"BbcyrR")
  puts(0.07, 0.22, "'BbcyrR'", "A")
  sub_plot(2,10,15,NULL,0.2)
  dens(a,"UbcyqR")
  puts(0.57, 0.22, "'UbcyqR'", "A")
  sub_plot(2,10,16,NULL,0.2)
  dens(a,"BbcwyrR")
  puts(0.07, 0.12, "'BbcwyrR'", "A")
  sub_plot(2,10,17,NULL,0.2)
  dens(a,"bgr")
  puts(0.57, 0.12, "'bgr'", "A")
  sub_plot(2,10,18,NULL,0.2)
  dens(a,"BbcyrR|")
  puts(0.07, 0.02, "'BbcyrR|'", "A")
  sub_plot(2,10,19,NULL,0.2)
  dens(a,"b{g,0.3}r")
  puts(0.57, 0.02, "'b\\{g,0.3\\}r'", "A")
end

# void smgl_curvcoor(mglGraph *gr)
# {
# 	gr->SetOrigin(-1,1,-1);
#
# 	gr->SubPlot(2,2,0);	gr->Title("Cartesian");	gr->Rotate(50,60);
# 	gr->FPlot("2*t-1","0.5","0","r2");
# 	gr->Axis(); gr->Grid();
#
# 	gr->SetFunc("y*sin(pi*x)","y*cos(pi*x)",0);
# 	gr->SubPlot(2,2,1);	gr->Title("Cylindrical");	gr->Rotate(50,60);
# 	gr->FPlot("2*t-1","0.5","0","r2");
# 	gr->Axis(); gr->Grid();
#
# 	gr->SetFunc("2*y*x","y*y - x*x",0);
# 	gr->SubPlot(2,2,2);	gr->Title("Parabolic");	gr->Rotate(50,60);
# 	gr->FPlot("2*t-1","0.5","0","r2");
# 	gr->Axis(); gr->Grid();
#
# 	gr->SetFunc("y*sin(pi*x)","y*cos(pi*x)","x+z");
# 	gr->SubPlot(2,2,3);	gr->Title("Spiral");	gr->Rotate(50,60);
# 	gr->FPlot("2*t-1","0.5","0","r2");
# 	gr->Axis(); gr->Grid();
# 	gr->SetFunc(0,0,0);
# }
procs['curvcoor'] = proc do
  set_origin(-1,1,-1)
  sub_plot(2,2,0)
  title("Cartesian")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("y*sin(pi*x)","y*cos(pi*x)","")
  sub_plot(2,2,1)
  title("Cylindrical")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("2*y*x","y*y - x*x","")
  sub_plot(2,2,2)
  title("Parabolic")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("y*sin(pi*x)","y*cos(pi*x)","x+z")
  sub_plot(2,2,3)
  title("Spiral")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("","","")
end

# void smgl_style(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0);
# 	double d,x1,x2,x0,y=0.95;
# 	d=0.3, x0=0.2, x1=0.5, x2=0.6;
# 	gr->Line(mglPoint(x0,1-0*d),mglPoint(x1,1-0*d),"k-");	gr->Puts(mglPoint(x2,y-0*d),"Solid '-'",":rL");
# 	gr->Line(mglPoint(x0,1-1*d),mglPoint(x1,1-1*d),"k|");	gr->Puts(mglPoint(x2,y-1*d),"Long Dash '|'",":rL");
# 	gr->Line(mglPoint(x0,1-2*d),mglPoint(x1,1-2*d),"k;");	gr->Puts(mglPoint(x2,y-2*d),"Dash ';'",":rL");
# 	gr->Line(mglPoint(x0,1-3*d),mglPoint(x1,1-3*d),"k=");	gr->Puts(mglPoint(x2,y-3*d),"Small dash '='",":rL");
# 	gr->Line(mglPoint(x0,1-4*d),mglPoint(x1,1-4*d),"kj");	gr->Puts(mglPoint(x2,y-4*d),"Dash-dot 'j'",":rL");
# 	gr->Line(mglPoint(x0,1-5*d),mglPoint(x1,1-5*d),"ki");	gr->Puts(mglPoint(x2,y-5*d),"Small dash-dot 'i'",":rL");
# 	gr->Line(mglPoint(x0,1-6*d),mglPoint(x1,1-6*d),"k:");	gr->Puts(mglPoint(x2,y-6*d),"Dots ':'",":rL");
# 	gr->Line(mglPoint(x0,1-7*d),mglPoint(x1,1-7*d),"k ");	gr->Puts(mglPoint(x2,y-7*d),"None ' '",":rL");
#
# 	d=0.25; x1=-1; x0=-0.8;	y = -0.05;
# 	gr->Mark(mglPoint(x1,5*d),"k.");		gr->Puts(mglPoint(x0,y+5*d),"'.'",":rL");
# 	gr->Mark(mglPoint(x1,4*d),"k+");		gr->Puts(mglPoint(x0,y+4*d),"'+'",":rL");
# 	gr->Mark(mglPoint(x1,3*d),"kx");		gr->Puts(mglPoint(x0,y+3*d),"'x'",":rL");
# 	gr->Mark(mglPoint(x1,2*d),"k*");		gr->Puts(mglPoint(x0,y+2*d),"'*'",":rL");
# 	gr->Mark(mglPoint(x1,d),"ks");		gr->Puts(mglPoint(x0,y+d),"'s'",":rL");
# 	gr->Mark(mglPoint(x1,0),"kd");		gr->Puts(mglPoint(x0,y),"'d'",":rL");
# 	gr->Mark(mglPoint(x1,-d,0),"ko");	gr->Puts(mglPoint(x0,y-d),"'o'",":rL");
# 	gr->Mark(mglPoint(x1,-2*d,0),"k^");	gr->Puts(mglPoint(x0,y-2*d),"'\\^'",":rL");
# 	gr->Mark(mglPoint(x1,-3*d,0),"kv");	gr->Puts(mglPoint(x0,y-3*d),"'v'",":rL");
# 	gr->Mark(mglPoint(x1,-4*d,0),"k<");	gr->Puts(mglPoint(x0,y-4*d),"'<'",":rL");
# 	gr->Mark(mglPoint(x1,-5*d,0),"k>");	gr->Puts(mglPoint(x0,y-5*d),"'>'",":rL");
#
# 	d=0.25; x1=-0.5; x0=-0.3;	y = -0.05;
# 	gr->Mark(mglPoint(x1,5*d),"k#.");	gr->Puts(mglPoint(x0,y+5*d),"'\\#.'",":rL");
# 	gr->Mark(mglPoint(x1,4*d),"k#+");	gr->Puts(mglPoint(x0,y+4*d),"'\\#+'",":rL");
# 	gr->Mark(mglPoint(x1,3*d),"k#x");	gr->Puts(mglPoint(x0,y+3*d),"'\\#x'",":rL");
# 	gr->Mark(mglPoint(x1,2*d),"k#*");	gr->Puts(mglPoint(x0,y+2*d),"'\\#*'",":rL");
# 	gr->Mark(mglPoint(x1,d),"k#s");		gr->Puts(mglPoint(x0,y+d),"'\\#s'",":rL");
# 	gr->Mark(mglPoint(x1,0),"k#d");		gr->Puts(mglPoint(x0,y),"'\\#d'",":rL");
# 	gr->Mark(mglPoint(x1,-d,0),"k#o");	gr->Puts(mglPoint(x0,y-d),"'\\#o'",":rL");
# 	gr->Mark(mglPoint(x1,-2*d,0),"k#^");	gr->Puts(mglPoint(x0,y-2*d),"'\\#\\^'",":rL");
# 	gr->Mark(mglPoint(x1,-3*d,0),"k#v");	gr->Puts(mglPoint(x0,y-3*d),"'\\#v'",":rL");
# 	gr->Mark(mglPoint(x1,-4*d,0),"k#<");	gr->Puts(mglPoint(x0,y-4*d),"'\\#<'",":rL");
# 	gr->Mark(mglPoint(x1,-5*d,0),"k#>");	gr->Puts(mglPoint(x0,y-5*d),"'\\#>'",":rL");
#
# 	gr->SubPlot(2,2,1);
# 	double a=0.1,b=0.4,c=0.5;
# 	gr->Line(mglPoint(a,1),mglPoint(b,1),"k-A");		gr->Puts(mglPoint(c,1),"Style 'A' or 'A\\_'",":rL");
# 	gr->Line(mglPoint(a,0.8),mglPoint(b,0.8),"k-V");	gr->Puts(mglPoint(c,0.8),"Style 'V' or 'V\\_'",":rL");
# 	gr->Line(mglPoint(a,0.6),mglPoint(b,0.6),"k-K");	gr->Puts(mglPoint(c,0.6),"Style 'K' or 'K\\_'",":rL");
# 	gr->Line(mglPoint(a,0.4),mglPoint(b,0.4),"k-I");	gr->Puts(mglPoint(c,0.4),"Style 'I' or 'I\\_'",":rL");
# 	gr->Line(mglPoint(a,0.2),mglPoint(b,0.2),"k-D");	gr->Puts(mglPoint(c,0.2),"Style 'D' or 'D\\_'",":rL");
# 	gr->Line(mglPoint(a,0),mglPoint(b,0),"k-S");		gr->Puts(mglPoint(c,0),"Style 'S' or 'S\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.2),mglPoint(b,-0.2),"k-O");	gr->Puts(mglPoint(c,-0.2),"Style 'O' or 'O\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.4),mglPoint(b,-0.4),"k-T");	gr->Puts(mglPoint(c,-0.4),"Style 'T' or 'T\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.6),mglPoint(b,-0.6),"k-_");	gr->Puts(mglPoint(c,-0.6),"Style '\\_' or none",":rL");
# 	gr->Line(mglPoint(a,-0.8),mglPoint(b,-0.8),"k-AS");	gr->Puts(mglPoint(c,-0.8),"Style 'AS'",":rL");
# 	gr->Line(mglPoint(a,-1),mglPoint(b,-1),"k-_A");		gr->Puts(mglPoint(c,-1),"Style '\\_A'",":rL");
#
# 	a=-1;	b=-0.7;	c=-0.6;
# 	gr->Line(mglPoint(a,1),mglPoint(b,1),"kAA");		gr->Puts(mglPoint(c,1),"Style 'AA'",":rL");
# 	gr->Line(mglPoint(a,0.8),mglPoint(b,0.8),"kVV");	gr->Puts(mglPoint(c,0.8),"Style 'VV'",":rL");
# 	gr->Line(mglPoint(a,0.6),mglPoint(b,0.6),"kKK");	gr->Puts(mglPoint(c,0.6),"Style 'KK'",":rL");
# 	gr->Line(mglPoint(a,0.4),mglPoint(b,0.4),"kII");	gr->Puts(mglPoint(c,0.4),"Style 'II'",":rL");
# 	gr->Line(mglPoint(a,0.2),mglPoint(b,0.2),"kDD");	gr->Puts(mglPoint(c,0.2),"Style 'DD'",":rL");
# 	gr->Line(mglPoint(a,0),mglPoint(b,0),"kSS");		gr->Puts(mglPoint(c,0),"Style 'SS'",":rL");
# 	gr->Line(mglPoint(a,-0.2),mglPoint(b,-0.2),"kOO");	gr->Puts(mglPoint(c,-0.2),"Style 'OO'",":rL");
# 	gr->Line(mglPoint(a,-0.4),mglPoint(b,-0.4),"kTT");	gr->Puts(mglPoint(c,-0.4),"Style 'TT'",":rL");
# 	gr->Line(mglPoint(a,-0.6),mglPoint(b,-0.6),"k-__");	gr->Puts(mglPoint(c,-0.6),"Style '\\_\\_'",":rL");
# 	gr->Line(mglPoint(a,-0.8),mglPoint(b,-0.8),"k-VA");	gr->Puts(mglPoint(c,-0.8),"Style 'VA'",":rL");
# 	gr->Line(mglPoint(a,-1),mglPoint(b,-1),"k-AV");		gr->Puts(mglPoint(c,-1),"Style 'AV'",":rL");
#
# 	gr->SubPlot(2,2,2);
#
# 	gr->FaceZ(mglPoint(-1,	-1), 0.4, 0.3, "L#");	gr->Puts(mglPoint(-0.8,-0.9), "L", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-1), 0.4, 0.3, "E#");	gr->Puts(mglPoint(-0.4,-0.9), "E", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-1), 0.4, 0.3, "N#");	gr->Puts(mglPoint(0,  -0.9), "N", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-1), 0.4, 0.3, "U#");	gr->Puts(mglPoint(0.4,-0.9), "U", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-1), 0.4, 0.3, "Q#");	gr->Puts(mglPoint(0.8,-0.9), "Q", "w:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	-0.7), 0.4, 0.3, "l#");	gr->Puts(mglPoint(-0.8,-0.6), "l", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-0.7), 0.4, 0.3, "e#");	gr->Puts(mglPoint(-0.4,-0.6), "e", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-0.7), 0.4, 0.3, "n#");	gr->Puts(mglPoint(0,  -0.6), "n", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-0.7), 0.4, 0.3, "u#");	gr->Puts(mglPoint(0.4,-0.6), "u", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-0.7), 0.4, 0.3, "q#");	gr->Puts(mglPoint(0.8,-0.6), "q", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	-0.4), 0.4, 0.3, "C#");	gr->Puts(mglPoint(-0.8,-0.3), "C", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-0.4), 0.4, 0.3, "M#");	gr->Puts(mglPoint(-0.4,-0.3), "M", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-0.4), 0.4, 0.3, "Y#");	gr->Puts(mglPoint(0,  -0.3), "Y", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-0.4), 0.4, 0.3, "k#");	gr->Puts(mglPoint(0.4,-0.3), "k", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-0.4), 0.4, 0.3, "P#");	gr->Puts(mglPoint(0.8,-0.3), "P", "w:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	-0.1), 0.4, 0.3, "c#");	gr->Puts(mglPoint(-0.8, 0), "c", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,-0.1), 0.4, 0.3, "m#");	gr->Puts(mglPoint(-0.4, 0), "m", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,-0.1), 0.4, 0.3, "y#");	gr->Puts(mglPoint(0,   0), "y", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	-0.1), 0.4, 0.3, "w#");	gr->Puts(mglPoint(0.4, 0), "w", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	-0.1), 0.4, 0.3, "p#");	gr->Puts(mglPoint(0.8, 0), "p", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	0.2), 0.4, 0.3, "B#");	gr->Puts(mglPoint(-0.8, 0.3), "B", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,0.2), 0.4, 0.3, "G#");	gr->Puts(mglPoint(-0.4, 0.3), "G", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,0.2), 0.4, 0.3, "R#");	gr->Puts(mglPoint(0,   0.3), "R", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	0.2), 0.4, 0.3, "H#");	gr->Puts(mglPoint(0.4, 0.3), "H", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	0.2), 0.4, 0.3, "W#");	gr->Puts(mglPoint(0.8, 0.3), "W", "w:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	0.5), 0.4, 0.3, "b#");	gr->Puts(mglPoint(-0.8, 0.6), "b", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,0.5), 0.4, 0.3, "g#");	gr->Puts(mglPoint(-0.4, 0.6), "g", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,0.5), 0.4, 0.3, "r#");	gr->Puts(mglPoint(0,   0.6), "r", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	0.5), 0.4, 0.3, "h#");	gr->Puts(mglPoint(0.4, 0.6), "h", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	0.5), 0.4, 0.3, "w#");	gr->Puts(mglPoint(0.8, 0.6), "w", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1,	0.8), 0.4, 0.3, "{r1}#");	gr->Puts(mglPoint(-0.8, 0.9), "\\{r1\\}", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.6,0.8), 0.4, 0.3, "{r3}#");	gr->Puts(mglPoint(-0.4, 0.9), "\\{r3\\}", "w:C", -1.4);
# 	gr->FaceZ(mglPoint(-0.2,0.8), 0.4, 0.3, "{r5}#");	gr->Puts(mglPoint(0,   0.9), "\\{r5\\}", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.2,	0.8), 0.4, 0.3, "{r7}#");	gr->Puts(mglPoint(0.4, 0.9), "\\{r7\\}", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0.6,	0.8), 0.4, 0.3, "{r9}#");	gr->Puts(mglPoint(0.8, 0.9), "\\{r9\\}", "k:C", -1.4);
#
# 	gr->FaceZ(mglPoint(-1, -1.3), 1, 0.3, "{xff9966}#");	gr->Puts(mglPoint(-0.5,-1.2), "\\{xff9966\\}", "k:C", -1.4);
# 	gr->FaceZ(mglPoint(0,  -1.3), 1, 0.3, "{x83CAFF}#");	gr->Puts(mglPoint( 0.5,-1.2), "\\{x83CAFF\\}", "k:C", -1.4);
#
# 	gr->SubPlot(2,2,3);
# 	char stl[3]="r1", txt[4]="'1'";
# 	for(int i=0;i<10;i++)
# 	{
# 		txt[1]=stl[1]='0'+i;
# 		gr->Line(mglPoint(-1,0.2*i-1),mglPoint(1,0.2*i-1),stl);
# 		gr->Puts(mglPoint(1.05,0.2*i-1),txt,":L");
# 	}
# }
procs['style'] = proc do
  sub_plot(2,2,0)
  y = 0.95
  d=0.3
  x0=0.2
  x1=0.5
  x2=0.6
  line([x0,1-0*d],[x1,1-0*d],"k-")
  puts([x2,y-0*d],"Solid '-'",":rL")
  line([x0,1-1*d],[x1,1-1*d],"k|")
  puts([x2,y-1*d],"Long Dash '|'",":rL")
  line([x0,1-2*d],[x1,1-2*d],"k;")
  puts([x2,y-2*d],"Dash ';'",":rL")
  line([x0,1-3*d],[x1,1-3*d],"k=")
  puts([x2,y-3*d],"Small dash '='",":rL")
  line([x0,1-4*d],[x1,1-4*d],"kj")
  puts([x2,y-4*d],"Dash-dot 'j'",":rL")
  line([x0,1-5*d],[x1,1-5*d],"ki")
  puts([x2,y-5*d],"Small dash-dot 'i'",":rL")
  line([x0,1-6*d],[x1,1-6*d],"k:")
  puts([x2,y-6*d],"Dots ':'",":rL")
  line([x0,1-7*d],[x1,1-7*d],"k ")
  puts([x2,y-7*d],"None ' '",":rL")
  d=0.25
  x1=-1
  x0=-0.8
  y = -0.05
  mark([x1,5*d],"k.")
  puts([x0,y+5*d],"'.'",":rL")
  mark([x1,4*d],"k+")
  puts([x0,y+4*d],"'+'",":rL")
  mark([x1,3*d],"kx")
  puts([x0,y+3*d],"'x'",":rL")
  mark([x1,2*d],"k*")
  puts([x0,y+2*d],"'*'",":rL")
  mark([x1,d],"ks")
  puts([x0,y+d],"'s'",":rL")
  mark([x1,0],"kd")
  puts([x0,y],"'d'",":rL")
  mark([x1,-d,0],"ko")
  puts([x0,y-d],"'o'",":rL")
  mark([x1,-2*d,0],"k^")
  puts([x0,y-2*d],"'\\^'",":rL")
  mark([x1,-3*d,0],"kv")
  puts([x0,y-3*d],"'v'",":rL")
  mark([x1,-4*d,0],"k<")
  puts([x0,y-4*d],"'<'",":rL")
  mark([x1,-5*d,0],"k>")
  puts([x0,y-5*d],"'>'",":rL")
  d=0.25
  x1=-0.5
  x0=-0.3
  y = -0.05
  mark([x1,5*d],"k#.")
  puts([x0,y+5*d],"'\\#.'",":rL")
  mark([x1,4*d],"k#+")
  puts([x0,y+4*d],"'\\#+'",":rL")
  mark([x1,3*d],"k#x")
  puts([x0,y+3*d],"'\\#x'",":rL")
  mark([x1,2*d],"k#*")
  puts([x0,y+2*d],"'\\#*'",":rL")
  mark([x1,d],"k#s")
  puts([x0,y+d],"'\\#s'",":rL")
  mark([x1,0],"k#d")
  puts([x0,y],"'\\#d'",":rL")
  mark([x1,-d,0],"k#o")
  puts([x0,y-d],"'\\#o'",":rL")
  mark([x1,-2*d,0],"k#^")
  puts([x0,y-2*d],"'\\#\\^'",":rL")
  mark([x1,-3*d,0],"k#v")
  puts([x0,y-3*d],"'\\#v'",":rL")
  mark([x1,-4*d,0],"k#<")
  puts([x0,y-4*d],"'\\#<'",":rL")
  mark([x1,-5*d,0],"k#>")
  puts([x0,y-5*d],"'\\#>'",":rL")
  sub_plot(2,2,1)
  a = 0.1
  b = 0.4
  c = 0.5
  line([a,1],[b,1],"k-A")
  puts([c,1],"Style 'A' or 'A\\_'",":rL")
  line([a,0.8],[b,0.8],"k-V")
  puts([c,0.8],"Style 'V' or 'V\\_'",":rL")
  line([a,0.6],[b,0.6],"k-K")
  puts([c,0.6],"Style 'K' or 'K\\_'",":rL")
  line([a,0.4],[b,0.4],"k-I")
  puts([c,0.4],"Style 'I' or 'I\\_'",":rL")
  line([a,0.2],[b,0.2],"k-D")
  puts([c,0.2],"Style 'D' or 'D\\_'",":rL")
  line([a,0],[b,0],"k-S")
  puts([c,0],"Style 'S' or 'S\\_'",":rL")
  line([a,-0.2],[b,-0.2],"k-O")
  puts([c,-0.2],"Style 'O' or 'O\\_'",":rL")
  line([a,-0.4],[b,-0.4],"k-T")
  puts([c,-0.4],"Style 'T' or 'T\\_'",":rL")
  line([a,-0.6],[b,-0.6],"k-_")
  puts([c,-0.6],"Style '\\_' or none",":rL")
  line([a,-0.8],[b,-0.8],"k-AS")
  puts([c,-0.8],"Style 'AS'",":rL")
  line([a,-1],[b,-1],"k-_A")
  puts([c,-1],"Style '\\_A'",":rL")
  a=-1
  b=-0.7
  c=-0.6
  line([a,1],[b,1],"kAA")
  puts([c,1],"Style 'AA'",":rL")
  line([a,0.8],[b,0.8],"kVV")
  puts([c,0.8],"Style 'VV'",":rL")
  line([a,0.6],[b,0.6],"kKK")
  puts([c,0.6],"Style 'KK'",":rL")
  line([a,0.4],[b,0.4],"kII")
  puts([c,0.4],"Style 'II'",":rL")
  line([a,0.2],[b,0.2],"kDD")
  puts([c,0.2],"Style 'DD'",":rL")
  line([a,0],[b,0],"kSS")
  puts([c,0],"Style 'SS'",":rL")
  line([a,-0.2],[b,-0.2],"kOO")
  puts([c,-0.2],"Style 'OO'",":rL")
  line([a,-0.4],[b,-0.4],"kTT")
  puts([c,-0.4],"Style 'TT'",":rL")
  line([a,-0.6],[b,-0.6],"k-__")
  puts([c,-0.6],"Style '\\_\\_'",":rL")
  line([a,-0.8],[b,-0.8],"k-VA")
  puts([c,-0.8],"Style 'VA'",":rL")
  line([a,-1],[b,-1],"k-AV")
  puts([c,-1],"Style 'AV'",":rL")
  sub_plot(2,2,2)
  face_z([-1,	-1], 0.4, 0.3, "L#")
  puts([-0.8,-0.9], "", "w:C", -1.4)
  face_z([-0.6,-1], 0.4, 0.3, "E#")
  puts([-0.4,-0.9], "E", "w:C", -1.4)
  face_z([-0.2,-1], 0.4, 0.3, "N#")
  puts([0,  -0.9], "N", "w:C", -1.4)
  face_z([0.2,	-1], 0.4, 0.3, "U#")
  puts([0.4,-0.9], "U", "w:C", -1.4)
  face_z([0.6,	-1], 0.4, 0.3, "Q#")
  puts([0.8,-0.9], "Q", "w:C", -1.4)
  face_z([-1,	-0.7], 0.4, 0.3, "l#")
  puts([-0.8,-0.6], "l", "k:C", -1.4)
  face_z([-0.6,-0.7], 0.4, 0.3, "e#")
  puts([-0.4,-0.6], "e", "k:C", -1.4)
  face_z([-0.2,-0.7], 0.4, 0.3, "n#")
  puts([0,  -0.6], "n", "k:C", -1.4)
  face_z([0.2,	-0.7], 0.4, 0.3, "u#")
  puts([0.4,-0.6], "u", "k:C", -1.4)
  face_z([0.6,	-0.7], 0.4, 0.3, "q#")
  puts([0.8,-0.6], "q", "k:C", -1.4)
  face_z([-1,	-0.4], 0.4, 0.3, "C#")
  puts([-0.8,-0.3], "C", "w:C", -1.4)
  face_z([-0.6,-0.4], 0.4, 0.3, "M#")
  puts([-0.4,-0.3], "M", "w:C", -1.4)
  face_z([-0.2,-0.4], 0.4, 0.3, "Y#")
  puts([0,  -0.3], "Y", "w:C", -1.4)
  face_z([0.2,	-0.4], 0.4, 0.3, "k#")
  puts([0.4,-0.3], "k", "w:C", -1.4)
  face_z([0.6,	-0.4], 0.4, 0.3, "P#")
  puts([0.8,-0.3], "P", "w:C", -1.4)
  face_z([-1,	-0.1], 0.4, 0.3, "c#")
  puts([-0.8, 0], "c", "k:C", -1.4)
  face_z([-0.6,-0.1], 0.4, 0.3, "m#")
  puts([-0.4, 0], "m", "k:C", -1.4)
  face_z([-0.2,-0.1], 0.4, 0.3, "y#")
  puts([0,   0], "y", "k:C", -1.4)
  face_z([0.2,	-0.1], 0.4, 0.3, "w#")
  puts([0.4, 0], "w", "k:C", -1.4)
  face_z([0.6,	-0.1], 0.4, 0.3, "p#")
  puts([0.8, 0], "p", "k:C", -1.4)
  face_z([-1,	0.2], 0.4, 0.3, "B#")
  puts([-0.8, 0.3], "B", "w:C", -1.4)
  face_z([-0.6,0.2], 0.4, 0.3, "G#")
  puts([-0.4, 0.3], "G", "w:C", -1.4)
  face_z([-0.2,0.2], 0.4, 0.3, "R#")
  puts([0,   0.3], "R", "w:C", -1.4)
  face_z([0.2,	0.2], 0.4, 0.3, "H#")
  puts([0.4, 0.3], "H", "w:C", -1.4)
  face_z([0.6,	0.2], 0.4, 0.3, "W#")
  puts([0.8, 0.3], "W", "w:C", -1.4)
  face_z([-1,	0.5], 0.4, 0.3, "b#")
  puts([-0.8, 0.6], "b", "k:C", -1.4)
  face_z([-0.6,0.5], 0.4, 0.3, "g#")
  puts([-0.4, 0.6], "g", "k:C", -1.4)
  face_z([-0.2,0.5], 0.4, 0.3, "r#")
  puts([0,   0.6], "r", "k:C", -1.4)
  face_z([0.2,	0.5], 0.4, 0.3, "h#")
  puts([0.4, 0.6], "h", "k:C", -1.4)
  face_z([0.6,	0.5], 0.4, 0.3, "w#")
  puts([0.8, 0.6], "w", "k:C", -1.4)
  face_z([-1,	0.8], 0.4, 0.3, "{r1}#")
  puts([-0.8, 0.9], "\\{r1\\}", "w:C", -1.4)
  face_z([-0.6,0.8], 0.4, 0.3, "{r3}#")
  puts([-0.4, 0.9], "\\{r3\\}", "w:C", -1.4)
  face_z([-0.2,0.8], 0.4, 0.3, "{r5}#")
  puts([0,   0.9], "\\{r5\\}", "k:C", -1.4)
  face_z([0.2,	0.8], 0.4, 0.3, "{r7}#")
  puts([0.4, 0.9], "\\{r7\\}", "k:C", -1.4)
  face_z([0.6,	0.8], 0.4, 0.3, "{r9}#")
  puts([0.8, 0.9], "\\{r9\\}", "k:C", -1.4)
  face_z([-1, -1.3], 1, 0.3, "{xff9966}#")
  puts([-0.5,-1.2], "\\{xff9966\\}", "k:C", -1.4)
  face_z([0,  -1.3], 1, 0.3, "{x83CAFF}#")
  puts([ 0.5,-1.2], "\\{x83CAFF\\}", "k:C", -1.4)
  sub_plot(2,2,3)
  stl = "r1"
  txt = "'1'"
  for i in 0...10
    txt[1]=stl[1]='%d'%i
    line([-1,0.2*i-1],[1,0.2*i-1],stl)
    puts([1.05,0.2*i-1],txt,":")
  end
end

# void smgl_text(mglGraph *gr)
# {
# 	if(!mini)	gr->SubPlot(2,2,0,"");
# 	gr->Putsw(mglPoint(0,1),L"Text can be in ASCII and in Unicode");
# 	gr->Puts(mglPoint(0,0.6),"It can be \\wire{wire}, \\big{big} or #r{colored}");
# 	gr->Puts(mglPoint(0,0.2),"One can change style in string: "
# 	"\\b{bold}, \\i{italic, \\b{both}}");
# 	gr->Puts(mglPoint(0,-0.2),"Easy to \\a{overline} or "
# 	"\\u{underline}");
# 	gr->Puts(mglPoint(0,-0.6),"Easy to change indexes ^{up} _{down} @{center}");
# 	gr->Puts(mglPoint(0,-1),"It parse TeX: \\int \\alpha \\cdot "
# 	"\\sqrt3{sin(\\pi x)^2 + \\gamma_{i_k}} dx");
# 	if(mini)	return;
#
# 	gr->SubPlot(2,2,1,"");
# 	gr->Puts(mglPoint(0,0.5), "\\sqrt{\\frac{\\alpha^{\\gamma^2}+\\overset 1{\\big\\infty}}{\\sqrt3{2+b}}}", "@", -2);
# 	gr->Puts(mglPoint(0,-0.5),"Text can be printed\non several lines");
#
# 	gr->SubPlot(2,2,2,"");
# 	mglData y;	mgls_prepare1d(&y);
# 	gr->Box();	gr->Plot(y.SubData(-1,0));
# 	gr->Text(y,"This is very very long string drawn along a curve","k");
# 	gr->Text(y,"Another string drawn above a curve","Tr");
#
# 	gr->SubPlot(2,2,3,"");
# 	gr->Line(mglPoint(-1,-1),mglPoint(1,-1),"rA");	gr->Puts(mglPoint(0,-1),mglPoint(1,-1),"Horizontal");
# 	gr->Line(mglPoint(-1,-1),mglPoint(1,1),"rA");	gr->Puts(mglPoint(0,0),mglPoint(1,1),"At angle","@");
# 	gr->Line(mglPoint(-1,-1),mglPoint(-1,1),"rA");	gr->Puts(mglPoint(-1,0),mglPoint(-1,1),"Vertical");
# }
procs['text'] = proc do
  if !$mini
    sub_plot(2,2,0,"")
  end
  #putsw([0,1],"Text can be inp ASCII and inp Unicode")
  puts([0,0.6],"It can be \\wire{wire}, \\big{big} or #r{colored}")
  puts([0,0.2],"One can change style inp string: \\b{bold}, \\i{italic, \\b{both}}")
  puts([0,-0.2],"Easy to \\a{overline} or \\u{underline}")
  puts([0,-0.6],"Easy to change indexes ^{up} _{down} @{center}")
  puts([0,-1],"It parse TeX: \\int \\alpha \\cdot \\sqrt3{sin(\\pi x)^2 + \\gamma_{i_k}} dx")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  puts([0,0.5], "\\sqrt{\\frac{\\alpha^{\\gamma^2}+\\overset 1{\\big\\infty}}{\\sqrt3{2+b}}}", "@", -2)
  puts([0,-0.5],"Text can be printed\non several lines")
  sub_plot(2,2,2,"")
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  box()
  plot(y.sub_data(-1,0))
  text(y,"This is very very long string drawn along a curve","k")
  text(y,"Another string drawn above a curve","Tr")
  sub_plot(2,2,3,"")
  line([-1,-1],[1,-1],"rA")
  puts([0,-1],[1,-1],"Horizontal")
  line([-1,-1],[1,1],"rA")
  puts([0,0],[1,1],"At angle","@")
  line([-1,-1],[-1,1],"rA")
  puts([-1,0],[-1,1],"Vertical")
end

# void smgl_fonts(mglGraph *gr)
# {
# 	double h=1.1, d=0.25;
# 	gr->LoadFont("STIX");		gr->Puts(mglPoint(0,h), "default font (STIX)");
# 	gr->LoadFont("adventor");	gr->Puts(mglPoint(0,h-d), "adventor font");
# 	gr->LoadFont("bonum");		gr->Puts(mglPoint(0,h-2*d), "bonum font");
# 	gr->LoadFont("chorus");		gr->Puts(mglPoint(0,h-3*d), "chorus font");
# 	gr->LoadFont("cursor");		gr->Puts(mglPoint(0,h-4*d), "cursor font");
# 	gr->LoadFont("heros");		gr->Puts(mglPoint(0,h-5*d), "heros font");
# 	gr->LoadFont("heroscn");	gr->Puts(mglPoint(0,h-6*d), "heroscn font");
# 	gr->LoadFont("pagella");	gr->Puts(mglPoint(0,h-7*d), "pagella font");
# 	gr->LoadFont("schola");		gr->Puts(mglPoint(0,h-8*d), "schola font");
# 	gr->LoadFont("termes");		gr->Puts(mglPoint(0,h-9*d), "termes font");
# 	gr->LoadFont("");
# }
procs['fonts'] = proc do
  h = 1.1
  d = 0.25
  load_font("STIX")
  puts([0,h], "default font (STIX)")
  load_font("adventor")
  puts([0,h-d], "adventor font")
  load_font("bonum")
  puts([0,h-2*d], "bonum font")
  load_font("chorus")
  puts([0,h-3*d], "chorus font")
  load_font("cursor")
  puts([0,h-4*d], "cursor font")
  load_font("heros")
  puts([0,h-5*d], "heros font")
  load_font("heroscn")
  puts([0,h-6*d], "heroscn font")
  load_font("pagella")
  puts([0,h-7*d], "pagella font")
  load_font("schola")
  puts([0,h-8*d], "schola font")
  load_font("termes")
  puts([0,h-9*d], "termes font")
  load_font("")
end

# void smgl_bars(mglGraph *gr)
# {
# 	mglData ys(10,3);	ys.Modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd");
# 	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(3,2,0,"");	gr->Title("Bars plot (default)");	}
# 	gr->Box();	gr->Bars(ys);
# 	if(mini)	return;
# 	gr->SubPlot(3,2,1,"");	gr->Title("2 colors");	gr->Box();	gr->Bars(ys,"cbgGyr");
# 	gr->SubPlot(3,2,4,"");	gr->Title("'\\#' style");	gr->Box();	gr->Bars(ys,"#");
# 	gr->SubPlot(3,2,5);	gr->Title("3d variant");	gr->Rotate(50,60);	gr->Box();
# 	mglData yc(30), xc(30), z(30);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	gr->Bars(xc,yc,z,"r");
# 	gr->SetRanges(-1,1,-3,3);
# 	gr->SubPlot(3,2,2,"");	gr->Title("'a' style");	gr->Box();	gr->Bars(ys,"a");
# 	gr->SubPlot(3,2,3,"");	gr->Title("'f' style");	gr->Box();	gr->Bars(ys,"f");
# }
procs['bars'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  set_origin(0,0,0)
  if !$mini
    sub_plot(3,2,0,"")
    title("Bars plot (default)")
  end
  box()
  bars(ys)
  if $mini
    return
  end
  sub_plot(3,2,1,"")
  title("2 colors")
  box()
  bars(ys,"cbgGyr")
  sub_plot(3,2,4,"")
  title("'\\#' style")
  box()
  bars(ys,"#")
  sub_plot(3,2,5)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  bars(xc,yc,z,"r")
  set_ranges(-1,1,-3,3)
  sub_plot(3,2,2,"")
  title("'a' style")
  box()
  bars(ys,"a")
  sub_plot(3,2,3,"")
  title("'f' style")
  box()
  bars(ys,"f")
end

# void smgl_barh(mglGraph *gr)
# {
# 	mglData ys(10,3);	ys.Modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd");
# 	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Barh plot (default)");	}
# 	gr->Box();	gr->Barh(ys);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("2 colors");	gr->Box();	gr->Barh(ys,"cbgGyr");
# 	gr->SetRanges(-3,3,-1,1);
# 	gr->SubPlot(2,2,2,"");	gr->Title("'a' style");	gr->Box();	gr->Barh(ys,"a");
# 	gr->SubPlot(2,2,3,"");	gr->Title("'f' style");	gr->Box();	gr->Barh(ys,"f");
# }
procs['barh'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Barh plot (default)")
  end
  box()
  barh(ys)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  barh(ys,"cbgGyr")
  set_ranges(-3,3,-1,1)
  sub_plot(2,2,2,"")
  title("'a' style")
  box()
  barh(ys,"a")
  sub_plot(2,2,3,"")
  title("'f' style")
  box()
  barh(ys,"f")
end

# void smgl_area(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Area plot (default)");	}
# 	gr->Box();	gr->Area(y);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("2 colors");	gr->Box();	gr->Area(y,"cbgGyr");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'!' style");	gr->Box();	gr->Area(y,"!");
# 	gr->SubPlot(2,2,3);	gr->Title("3d variant");	gr->Rotate(50,60);	gr->Box();
# 	mglData yc(30), xc(30), z(30);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	gr->Area(xc,yc,z,"r");
# 	yc.Modify("-sin(pi*(2*x-1))");	gr->Area(xc,yc,z,"b#");
# }
procs['area'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Area plot (default)")
  end
  box()
  area(y)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  area(y,"cbgGyr")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  area(y,"!")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  area(xc,yc,z,"r")
  yc.modify("-sin(pi*(2*x-1))")
  area(xc,yc,z,"b#")
end

# void smgl_plot(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Plot plot (default)");	}
# 	gr->Box();	gr->Plot(y);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,2,"");	gr->Title("'!' style; 'rgb' palette");	gr->Box();	gr->Plot(y,"o!rgb");
# 	gr->SubPlot(2,2,3,"");	gr->Title("just markers");	gr->Box();	gr->Plot(y," +");
# 	gr->SubPlot(2,2,1);	gr->Title("3d variant");	gr->Rotate(50,60);	gr->Box();
# 	mglData yc(30), xc(30), z(30);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	gr->Plot(xc,yc,z,"rs");
# }
procs['plot'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Plot plot (default)")
  end
  box()
  plot(y)
  if $mini
    return
  end
  sub_plot(2,2,2,"")
  title("'!' style; 'rgb' palette")
  box()
  plot(y,"o!rgb")
  sub_plot(2,2,3,"")
  title("just markers")
  box()
  plot(y," +")
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  plot(xc,yc,z,"rs")
end

# void smgl_tens(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Tens plot (default)");	}
# 	gr->Box();	gr->Tens(y.SubData(-1,0), y.SubData(-1,1));
# 	if(mini)	return;
# 	gr->SubPlot(2,2,2,"");	gr->Title("' ' style");	gr->Box();	gr->Tens(y.SubData(-1,0), y.SubData(-1,1),"o ");
# 	gr->SubPlot(2,2,1);	gr->Title("3d variant");	gr->Rotate(50,60);	gr->Box();
# 	mglData yc(30), xc(30), z(30);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	gr->Tens(xc,yc,z,z,"s");
# }
procs['tens'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Tens plot (default)")
  end
  box()
  tens(y.sub_data(-1,0), y.sub_data(-1,1))
  if $mini
    return
  end
  sub_plot(2,2,2,"")
  title("' ' style")
  box()
  tens(y.sub_data(-1,0), y.sub_data(-1,1),"o ")
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  tens(xc,yc,z,z,"s")
end

# void smgl_region(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);
# 	mglData y1 = y.SubData(-1,1), y2 = y.SubData(-1,2);	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Region plot (default)");	}
# 	gr->Box();	gr->Region(y1,y2);	gr->Plot(y1,"k2");	gr->Plot(y2,"k2");
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("2 colors");	gr->Box();	gr->Region(y1,y2,"yr");	gr->Plot(y1,"k2");	gr->Plot(y2,"k2");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'!' style");	gr->Box();	gr->Region(y1,y2,"!");	gr->Plot(y1,"k2");	gr->Plot(y2,"k2");
# 	gr->SubPlot(2,2,3,"");	gr->Title("'i' style");	gr->Box();	gr->Region(y1,y2,"ir");	gr->Plot(y1,"k2");	gr->Plot(y2,"k2");
# }
procs['region'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  y1 = y.sub_data(-1,1)
  y2 = y.sub_data(-1,2)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Region plot (default)")
  end
  box()
  region(y1,y2)
  plot(y1,"k2")
  plot(y2,"k2")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  region(y1,y2,"yr")
  plot(y1,"k2")
  plot(y2,"k2")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  region(y1,y2,"!")
  plot(y1,"k2")
  plot(y2,"k2")
  sub_plot(2,2,3,"")
  title("'i' style")
  box()
  region(y1,y2,"ir")
  plot(y1,"k2")
  plot(y2,"k2")
end

# void smgl_stem(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);	gr->SetOrigin(0,0,0);
# 	mglData yc(30), xc(30), z(30);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Stem plot (default)");	}
# 	gr->Box();	gr->Stem(y);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("3d variant");	gr->Rotate(50,60);
# 	gr->Box();	gr->Stem(xc,yc,z,"rx");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'!' style");	gr->Box();	gr->Stem(y,"o!rgb");
# }
procs['stem'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Stem plot (default)")
  end
  box()
  stem(y)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  stem(xc,yc,z,"rx")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  stem(y,"o!rgb")
end

# void smgl_step(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);	gr->SetOrigin(0,0,0);
# 	mglData yc(30), xc(30), z(30);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Step plot (default)");	}
# 	gr->Box();	gr->Step(y);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("3d variant");	gr->Rotate(50,60);
# 	gr->Box();	gr->Step(xc,yc,z,"r");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'!' style");	gr->Box();	gr->Step(y,"s!rgb");
# }
procs['step'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Step plot (default)")
  end
  box()
  step(y)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  step(xc,yc,z,"r")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  step(y,"s!rgb")
end

# void smgl_boxplot(mglGraph *gr)
# {
# 	mglData a(10,7);	a.Modify("(2*rnd-1)^3/2");
# 	if(!mini)	{	gr->SubPlot(1,1,0,"");	gr->Title("Boxplot plot");	}
# 	gr->Box();	gr->BoxPlot(a);
# }
procs['boxplot'] = proc do
  a = MathGL::MglData.new(10,7)
  a.modify("(2*rnd-1)^3/2")
  if !$mini
    sub_plot(1,1,0,"")
    title("Boxplot plot")
  end
  box()
  box_plot(a)
end

# void smgl_type0(mglGraph *gr)
# {
# 	gr->Alpha(true);	gr->Light(true);
# 	mglData a;	mgls_prepare2d(&a);
# 	gr->SetTranspType(0);	gr->Clf();
# 	gr->SubPlot(2,2,0);	gr->Rotate(50,60);	gr->Surf(a);	gr->Box();
# 	gr->SubPlot(2,2,1);	gr->Rotate(50,60);	gr->Dens(a);	gr->Box();
# 	gr->SubPlot(2,2,2);	gr->Rotate(50,60);	gr->Cont(a);	gr->Box();
# 	gr->SubPlot(2,2,3);	gr->Rotate(50,60);	gr->Axial(a);	gr->Box();
# }
procs['type0'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(0)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end

# void smgl_type1(mglGraph *gr)
# {
# 	gr->Alpha(true);	gr->Light(true);
# 	mglData a;	mgls_prepare2d(&a);
# 	gr->SetTranspType(1);	gr->Clf();
# 	gr->SubPlot(2,2,0);	gr->Rotate(50,60);	gr->Surf(a);	gr->Box();
# 	gr->SubPlot(2,2,1);	gr->Rotate(50,60);	gr->Dens(a);	gr->Box();
# 	gr->SubPlot(2,2,2);	gr->Rotate(50,60);	gr->Cont(a);	gr->Box();
# 	gr->SubPlot(2,2,3);	gr->Rotate(50,60);	gr->Axial(a);	gr->Box();
# }
procs['type1'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(1)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end

# void smgl_type2(mglGraph *gr)
# {
# 	gr->Alpha(true);	gr->Light(true);
# 	mglData a;	mgls_prepare2d(&a);
# 	gr->SetTranspType(2);	gr->Clf();
# 	gr->SubPlot(2,2,0);	gr->Rotate(50,60);	gr->Surf(a);	gr->Box();
# 	gr->SubPlot(2,2,1);	gr->Rotate(50,60);	gr->Dens(a);	gr->Box();
# 	gr->SubPlot(2,2,2);	gr->Rotate(50,60);	gr->Cont(a);	gr->Box();
# 	gr->SubPlot(2,2,3);	gr->Rotate(50,60);	gr->Axial(a);	gr->Box();
# }
procs['type2'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(2)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end

# void smgl_molecule(mglGraph *gr)
# {
# 	gr->VertexColor(false);	gr->Compression(false);
# 	gr->DoubleSided(false);
# 	gr->Alpha(true);	gr->Light(true);
#
# 	gr->SubPlot(2,2,0,"");	gr->Title("Methane, CH_4");
# 	gr->StartGroup("Methane");
# 	gr->Rotate(60,120);
# 	gr->Sphere(mglPoint(0,0,0),0.25,"k");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0,0,1),0.35,"h",1,2);
# 	gr->Sphere(mglPoint(0,0,0.7),0.25,"g");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(-0.94,0,-0.33),0.35,"h",1,2);
# 	gr->Sphere(mglPoint(-0.66,0,-0.23),0.25,"g");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0.47,0.82,-0.33),0.35,"h",1,2);
# 	gr->Sphere(mglPoint(0.33,0.57,-0.23),0.25,"g");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0.47,-0.82,-0.33),0.35,"h",1,2);
# 	gr->Sphere(mglPoint(0.33,-0.57,-0.23),0.25,"g");
# 	gr->EndGroup();
#
# 	gr->SubPlot(2,2,1,"");	gr->Title("Water, H_{2}O");
# 	gr->StartGroup("Water");
# 	gr->Rotate(60,100);
# 	gr->StartGroup("Water_O");
# 	gr->Sphere(mglPoint(0,0,0),0.25,"r");
# 	gr->EndGroup();
# 	gr->StartGroup("Water_Bond_1");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0.3,0.5,0),0.3,"m",1,2);
# 	gr->EndGroup();
# 	gr->StartGroup("Water_H_1");
# 	gr->Sphere(mglPoint(0.3,0.5,0),0.25,"g");
# 	gr->EndGroup();
# 	gr->StartGroup("Water_Bond_2");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0.3,-0.5,0),0.3,"m",1,2);
# 	gr->EndGroup();
# 	gr->StartGroup("Water_H_2");
# 	gr->Sphere(mglPoint(0.3,-0.5,0),0.25,"g");
# 	gr->EndGroup();
# 	gr->EndGroup();
#
# 	gr->SubPlot(2,2,2,"");	gr->Title("Oxygen, O_2");
# 	gr->StartGroup("Oxygen");
# 	gr->Rotate(60,120);
# 	gr->Drop(mglPoint(0,0.5,0),mglPoint(0,-0.3,0),0.3,"m",1,2);
# 	gr->Sphere(mglPoint(0,0.5,0),0.25,"r");
# 	gr->Drop(mglPoint(0,-0.5,0),mglPoint(0,0.3,0),0.3,"m",1,2);
# 	gr->Sphere(mglPoint(0,-0.5,0),0.25,"r");
# 	gr->EndGroup();
#
# 	gr->SubPlot(2,2,3,"");	gr->Title("Ammonia, NH_3");
# 	gr->StartGroup("Ammonia");
# 	gr->Rotate(60,120);
# 	gr->Sphere(mglPoint(0,0,0),0.25,"b");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0.33,0.57,0),0.32,"n",1,2);
# 	gr->Sphere(mglPoint(0.33,0.57,0),0.25,"g");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(0.33,-0.57,0),0.32,"n",1,2);
# 	gr->Sphere(mglPoint(0.33,-0.57,0),0.25,"g");
# 	gr->Drop(mglPoint(0,0,0),mglPoint(-0.65,0,0),0.32,"n",1,2);
# 	gr->Sphere(mglPoint(-0.65,0,0),0.25,"g");
# 	gr->EndGroup();
# 	gr->DoubleSided( true );
# }
procs['molecule'] = proc do
  vertex_color(false)
  compression(false)
  double_sided(false)
  alpha(true)
  light(true)
  sub_plot(2,2,0,"")
  title("Methane, CH_4")
  start_group("Methane")
  rotate(60,120)
  sphere([0,0,0],0.25,"k")
  drop([0,0,0],[0,0,1],0.35,"h",1,2)
  sphere([0,0,0.7],0.25,"g")
  drop([0,0,0],[-0.94,0,-0.33],0.35,"h",1,2)
  sphere([-0.66,0,-0.23],0.25,"g")
  drop([0,0,0],[0.47,0.82,-0.33],0.35,"h",1,2)
  sphere([0.33,0.57,-0.23],0.25,"g")
  drop([0,0,0],[0.47,-0.82,-0.33],0.35,"h",1,2)
  sphere([0.33,-0.57,-0.23],0.25,"g")
  end_group()
  sub_plot(2,2,1,"")
  title("Water, H_{2}O")
  start_group("Water")
  rotate(60,100)
  start_group("Water_O")
  sphere([0,0,0],0.25,"r")
  end_group()
  start_group("Water_Bond_1")
  drop([0,0,0],[0.3,0.5,0],0.3,"m",1,2)
  end_group()
  start_group("Water_H_1")
  sphere([0.3,0.5,0],0.25,"g")
  end_group()
  start_group("Water_Bond_2")
  drop([0,0,0],[0.3,-0.5,0],0.3,"m",1,2)
  end_group()
  start_group("Water_H_2")
  sphere([0.3,-0.5,0],0.25,"g")
  end_group()
  end_group()
  sub_plot(2,2,2,"")
  title("Oxygen, O_2")
  start_group("Oxygen")
  rotate(60,120)
  drop([0,0.5,0],[0,-0.3,0],0.3,"m",1,2)
  sphere([0,0.5,0],0.25,"r")
  drop([0,-0.5,0],[0,0.3,0],0.3,"m",1,2)
  sphere([0,-0.5,0],0.25,"r")
  end_group()
  sub_plot(2,2,3,"")
  title("Ammonia, NH_3")
  start_group("Ammonia")
  rotate(60,120)
  sphere([0,0,0],0.25,"b")
  drop([0,0,0],[0.33,0.57,0],0.32,"n",1,2)
  sphere([0.33,0.57,0],0.25,"g")
  drop([0,0,0],[0.33,-0.57,0],0.32,"n",1,2)
  sphere([0.33,-0.57,0],0.25,"g")
  drop([0,0,0],[-0.65,0,0],0.32,"n",1,2)
  sphere([-0.65,0,0],0.25,"g")
  end_group()
  double_sided( true )
end

# void smgl_error(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);
# 	mglData x0(10), y0(10), ex0(10), ey0(10);
# 	double x;
# 	for(int i=0;i<10;i++)
# 	{
# 		x = i/9.;
# 		x0.a[i] = 2*x-1 + 0.1*mgl_rnd()-0.05;
# 		y0.a[i] = 0.7*sin(2*M_PI*x)+0.5*cos(3*M_PI*x)+0.2*sin(M_PI*x)+0.2*mgl_rnd()-0.1;
# 		ey0.a[i]=0.2;	ex0.a[i]=0.1;
# 	}
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Error plot (default)");	}
# 	gr->Box();	gr->Plot(y.SubData(-1,0));	gr->Error(x0,y0,ex0,ey0,"ko");
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("'!' style; no e_x");
# 	gr->Box();	gr->Plot(y.SubData(-1,0));	gr->Error(x0,y0,ey0,"o!rgb");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'\\@' style");	gr->Alpha(true);
# 	gr->Box();	gr->Plot(y.SubData(-1,0));	gr->Error(x0,y0,ex0,ey0,"@","alpha 0.5");
# 	gr->SubPlot(2,2,3);	gr->Title("3d variant");	gr->Rotate(50,60);
# 	for(int i=0;i<10;i++)
# 		gr->Error(mglPoint(2*mgl_rnd()-1,2*mgl_rnd()-1,2*mgl_rnd()-1), mglPoint(0.2,0.2,0.2),"bo");
# 	gr->Axis();
# }
procs['error'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  x0 = MathGL::MglData.new(10)
  y0 = MathGL::MglData.new(10)
  ex0 = MathGL::MglData.new(10)
  ey0 = MathGL::MglData.new(10)
  for i in 0...10
    x = i/9.0
    x0.set_val(2*x-1 + 0.1*mgl_rnd()-0.05,i)
    y0.set_val(0.7*Math.sin(2*M_PI*x)+0.5*Math.cos(3*M_PI*x)+0.2*Math.sin(M_PI*x)+0.2*mgl_rnd()-0.1,i)
    ey0.set_val(0.2,i)
    ex0.set_val(0.1,i)
  end
  if !$mini
    sub_plot(2,2,0,"")
    title("Error plot (default)")
  end
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ex0,ey0,"ko")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'!' style; no e_x")
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ey0,"o!rgb")
  sub_plot(2,2,2,"")
  title("'\\@' style")
  alpha(true)
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ex0,ey0,"@","alpha 0.5")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  for i in 0...10
    error([2*mgl_rnd()-1,2*mgl_rnd()-1,2*mgl_rnd()-1], [0.2,0.2,0.2],"bo")
  end
  axis()
end

# void smgl_chart(mglGraph *gr)
# {
# 	mglData ch(7,2);	for(int i=0;i<7*2;i++)	ch.a[i]=mgl_rnd()+0.1;
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Chart plot (default)");	}
# 	gr->Light(true);	gr->Rotate(50,60);	gr->Box();	gr->Chart(ch);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'\\#' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Chart(ch,"#");
# 	gr->SubPlot(2,2,2);	gr->Title("Pie chart; ' ' color");
# 	gr->SetFunc("(y+1)/2*cos(pi*x)","(y+1)/2*sin(pi*x)","");
# 	gr->Rotate(50,60);	gr->Box();	gr->Chart(ch,"bgr cmy#");
# 	gr->SubPlot(2,2,3);	gr->Title("Ring chart; ' ' color");
# 	gr->SetFunc("(y+2)/3*cos(pi*x)","(y+2)/3*sin(pi*x)","");
# 	gr->Rotate(50,60);	gr->Box();	gr->Chart(ch,"bgr cmy#");
# }
procs['chart'] = proc do
  ch = MathGL::MglData.new(7,2)
  for i in 0...7*2
    ch.set_val(mgl_rnd()+0.1,i)
  end
  if !$mini
    sub_plot(2,2,0)
    title("Chart plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  chart(ch)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style")
  rotate(50,60)
  box()
  chart(ch,"#")
  sub_plot(2,2,2)
  title("Pie chart; ' ' color")
  set_func("(y+1)/2*cos(pi*x)","(y+1)/2*sin(pi*x)","")
  rotate(50,60)
  box()
  chart(ch,"bgr cmy#")
  sub_plot(2,2,3)
  title("Ring chart; ' ' color")
  set_func("(y+2)/3*cos(pi*x)","(y+2)/3*sin(pi*x)","")
  rotate(50,60)
  box()
  chart(ch,"bgr cmy#")
end

# void smgl_mark(mglGraph *gr)
# {
# 	mglData y,y1;	mgls_prepare1d(&y,&y1);
# 	if(!mini)	{	gr->SubPlot(1,1,0,"");	gr->Title("Mark plot (default)");	}
# 	gr->Box();	gr->Mark(y,y1,"s");
# }
procs['mark'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  mgls_prepare1d(y,y1)
  if !$mini
    sub_plot(1,1,0,"")
    title("Mark plot (default)")
  end
  box()
  mark(y,y1,"s")
end

# void smgl_radar(mglGraph *gr)
# {
# 	mglData yr(10,3);	yr.Modify("0.4*sin(pi*(2*x+y))+0.1*rnd");
# 	if(!mini)	{	gr->SubPlot(1,1,0,"");	gr->Title("Radar plot (with grid, '\\#')");	}
# 	gr->Radar(yr,"#");
# }
procs['radar'] = proc do
  yr = MathGL::MglData.new(10,3)
  yr.modify("0.4*sin(pi*(2*x+y))+0.1*rnd")
  if !$mini
    sub_plot(1,1,0,"")
    title("Radar plot (with grid, '\\#')")
  end
  radar(yr,"#")
end

# void smgl_candle(mglGraph *gr)
# {
# 	mglData y(30);	gr->Fill(y,"sin(pi*x/2)^2");
# 	mglData y1(30);	gr->Fill(y1,"v/2",y);
# 	mglData y2(30);	gr->Fill(y2,"(1+v)/2",y);
# 	if(!mini)	{	gr->SubPlot(1,1,0,"");	gr->Title("Candle plot (default)");	}
# 	gr->SetRange('y',0,1);	gr->Box();	gr->Candle(y,y1,y2);
# }
procs['candle'] = proc do
  y = MathGL::MglData.new(30)
  fill(y,"sin(pi*x/2)^2")
  y1 = MathGL::MglData.new(30)
  fill(y1,"v/2",y)
  y2 = MathGL::MglData.new(30)
  fill(y2,"(1+v)/2",y)
  if !$mini
    sub_plot(1,1,0,"")
    title("Candle plot (default)")
  end
  set_range('y',0,1)
  box()
  candle(y,y1,y2)
end

# void smgl_textmark(mglGraph *gr)
# {
# 	mglData y,y1;	mgls_prepare1d(&y,&y1);
# 	if(!mini)	{	gr->SubPlot(1,1,0,"");	gr->Title("TextMark plot (default)");	}
# 	gr->Box();	gr->TextMark(y,y1,"\\gamma","r");
# }
procs['textmark'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  mgls_prepare1d(y,y1)
  if !$mini
    sub_plot(1,1,0,"")
    title("TextMark plot (default)")
  end
  box()
  text_mark(y,y1,"\\gamma","r")
end

# void smgl_tube(mglGraph *gr)
# {
# 	mglData y,y1,y2;	mgls_prepare1d(&y,&y1,&y2);	y1/=20;
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Tube plot (default)");	}
# 	gr->Light(true);	gr->Box();	gr->Tube(y,0.05);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("variable radius");	gr->Box();	gr->Tube(y,y1);
# 	gr->SubPlot(2,2,2,"");	gr->Title("'\\#' style");	gr->Box();	gr->Tube(y,0.05,"#");
# 	mglData yc(50), xc(50), z(50);	z.Modify("2*x-1");
# 	yc.Modify("sin(pi*(2*x-1))");	xc.Modify("cos(pi*2*x-pi)");
# 	gr->SubPlot(2,2,3);	gr->Title("3d variant");	gr->Rotate(50,60);	gr->Box();	gr->Tube(xc,yc,z,y2,"r");
# }
procs['tube'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(y,y1,y2)
  y1/=20
  if !$mini
    sub_plot(2,2,0,"")
    title("Tube plot (default)")
  end
  light(true)
  box()
  tube(y,0.05)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("variable radius")
  box()
  tube(y,y1)
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  tube(y,0.05,"#")
  yc = MathGL::MglData.new(50)
  xc = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  tube(xc,yc,z,y2,"r")
end

# void smgl_tape(mglGraph *gr)
# {
# 	mglData y;	mgls_prepare1d(&y);
# 	mglData xc(50), yc(50), z(50);
# 	yc.Modify("sin(pi*(2*x-1))");
# 	xc.Modify("cos(pi*2*x-pi)");	z.Fill(-1,1);
# 	if(!mini)	{	gr->SubPlot(2,2,0,"");	gr->Title("Tape plot (default)");	}
# 	gr->Box();	gr->Tape(y);	gr->Plot(y,"k");
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("3d variant, 2 colors");	gr->Rotate(50,60);	gr->Light(true);
# 	gr->Box();	gr->Plot(xc,yc,z,"k");	gr->Tape(xc,yc,z,"rg");
# 	gr->SubPlot(2,2,2);	gr->Title("3d variant, x only");	gr->Rotate(50,60);
# 	gr->Box();	gr->Plot(xc,yc,z,"k");	gr->Tape(xc,yc,z,"xr");	gr->Tape(xc,yc,z,"xr#");
# 	gr->SubPlot(2,2,3);	gr->Title("3d variant, z only");	gr->Rotate(50,60);
# 	gr->Box();	gr->Plot(xc,yc,z,"k");	gr->Tape(xc,yc,z,"zg");	gr->Tape(xc,yc,z,"zg#");
# }
procs['tape'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  xc = MathGL::MglData.new(50)
  yc = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  z.fill(-1,1)
  if !$mini
    sub_plot(2,2,0,"")
    title("Tape plot (default)")
  end
  box()
  tape(y)
  plot(y,"k")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant, 2 colors")
  rotate(50,60)
  light(true)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"rg")
  sub_plot(2,2,2)
  title("3d variant, x only")
  rotate(50,60)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"xr")
  tape(xc,yc,z,"xr#")
  sub_plot(2,2,3)
  title("3d variant, z only")
  rotate(50,60)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"zg")
  tape(xc,yc,z,"zg#")
end

# void smgl_fog(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	gr->Title("Fog sample");
# 	gr->Light(true);	gr->Rotate(50,60);	gr->Fog(1);	gr->Box();
# 	gr->Surf(a);
# }
procs['fog'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Fog sample")
  end
  light(true)
  rotate(50,60)
  fog(1)
  box()
  surf(a)
end

# void smgl_map(mglGraph *gr)
# {
# 	mglData a(50, 40), b(50, 40);
# 	gr->Puts(mglPoint(0, 0), "\\to", ":C", -1.4);
# 	gr->SetRanges(-1,1,-1,1,-2,2);
#
# 	gr->SubPlot(2, 1, 0);
# 	gr->Fill(a,"x");	gr->Fill(b,"y");
# 	gr->Puts(mglPoint(0, 1.1), "\\{x, y\\}", ":C", -2);		gr->Box();
# 	gr->Map(a, b, "brgk");
#
# 	gr->SubPlot(2, 1, 1);
# 	gr->Fill(a,"(x^3+y^3)/2");	gr->Fill(b,"(x-y)/2");
# 	gr->Puts(mglPoint(0, 1.1), "\\{\\frac{x^3+y^3}{2}, \\frac{x-y}{2}\\}", ":C", -2);
# 	gr->Box();
# 	gr->Map(a, b, "brgk");
# }
procs['map'] = proc do
  a = MathGL::MglData.new(50, 40)
  b = MathGL::MglData.new(50, 40)
  puts([0, 0], "\\to", ":C", -1.4)
  set_ranges(-1,1,-1,1,-2,2)
  sub_plot(2, 1, 0)
  fill(a,"x")
  fill(b,"y")
  puts([0, 1.1], "\\{x, y\\}", ":C", -2)
  box()
  map(a, b, "brgk")
  sub_plot(2, 1, 1)
  fill(a,"(x^3+y^3)/2")
  fill(b,"(x-y)/2")
  puts([0, 1.1], "\\{\\frac{x^3+y^3}{2}, \\frac{x-y}{2}\\}", ":C", -2)
  box()
  map(a, b, "brgk")
end

# void smgl_stfa(mglGraph *gr)
# {
# 	mglData a(2000), b(2000);
# 	gr->Fill(a,"cos(50*pi*x)*(x<-.5)+cos(100*pi*x)*(x<0)*(x>-.5)+\
# 	cos(200*pi*x)*(x<.5)*(x>0)+cos(400*pi*x)*(x>.5)");
# 	gr->SubPlot(1, 2, 0,"<_");	gr->Title("Initial signal");
# 	gr->Plot(a);
# 	gr->Axis();
# 	gr->Label('x', "\\i t");
#
# 	gr->SubPlot(1, 2, 1,"<_");	gr->Title("STFA plot");
# 	gr->STFA(a, b, 64);
# 	gr->Axis();
# 	gr->Label('x', "\\i t");
# 	gr->Label('y', "\\omega", 0);
# }
procs['stfa'] = proc do
  a = MathGL::MglData.new(2000)
  b = MathGL::MglData.new(2000)
  fill(a,"cos(50*pi*x)*(x<-.5)+cos(100*pi*x)*(x<0)*(x>-.5)+\
	cos(200*pi*x)*(x<.5)*(x>0)+cos(400*pi*x)*(x>.5)")
  sub_plot(1, 2, 0,"<_")
  title("Initial signal")
  plot(a)
  axis()
  label('x', "\\i t")
  sub_plot(1, 2, 1,"<_")
  title("STFA plot")
  stfa(a, b, 64)
  axis()
  label('x', "\\i t")
  label('y', "\\omega", 0)
end

# void smgl_qo2d(mglGraph *gr)
# {
# 	mglData r, xx, yy, a, im(128), re(128);
# 	const char *ham = "p^2+q^2-x-1+i*0.5*(y+x)*(y>-x)";
# 	r = mglRay(ham, mglPoint(-0.7, -1), mglPoint(0, 0.5), 0.02, 2);
# 	if(!mini)	{gr->SubPlot(1,1,0,"<_");	gr->Title("Beam and ray tracing");}
# 	gr->Plot(r.SubData(0), r.SubData(1), "k");
# 	gr->Axis();	gr->Label('x', "\\i x");	gr->Label('y', "\\i y");
#
# 	gr->Fill(re,"exp(-48*x^2)");
# 	a = mglQO2d(ham, re, im, r, xx, yy, 1, 30);
# 	gr->SetRange('c',0, 1);
# 	gr->Dens(xx, yy, a, "wyrRk");
# 	gr->FPlot("-x", "k|");
# 	gr->Puts(mglPoint(0, 0.85), "absorption: (x+y)/2 for x+y>0");
# 	gr->Puts(mglPoint(0.7, -0.05), "central ray");
# }
procs['qo2d'] = proc do
  r = MathGL::MglData.new
  xx = MathGL::MglData.new
  yy = MathGL::MglData.new
  a = MathGL::MglData.new
  im = MathGL::MglData.new(128)
  re = MathGL::MglData.new(128)
  ham = "p^2+q^2-x-1+i*0.5*(y+x)*(y>-x)"
  r = MathGL.mgl_ray(ham, [-0.7, -1], [0, 0.5], 0.02, 2)
  if !$mini
    sub_plot(1,1,0,"<_")
    title("Beam and ray tracing")
  end
  plot(r.sub_data(0), r.sub_data(1), "k")
  axis()
  label('x', "\\i x")
  label('y', "\\i y")
  fill(re,"exp(-48*x^2)")
  a = MathGL.mgl_qo_2d(ham, re, im, r, xx, yy, 1, 30)
  set_range('c',0, 1)
  dens(xx, yy, a, "wyrRk")
  fplot("-x", "k|")
  puts([0, 0.85], "absorption: (x+y)/2 for x+y>0")
  puts([0.7, -0.05], "central ray")
end

# void smgl_pde(mglGraph *gr)
# {
# 	mglData a,re(128),im(128);
# 	gr->Fill(re,"exp(-48*(x+0.7)^2)");
# 	a = gr->PDE("p^2+q^2-x-1+i*0.5*(z+x)*(z>-x)", re, im, 0.01, 30);
# 	a.Transpose("yxz");
# 	if(!mini)	{gr->SubPlot(1,1,0,"<_");	gr->Title("PDE solver");	}
# 	gr->SetRange('c',0,1);	gr->Dens(a,"wyrRk");
# 	gr->Axis();	gr->Label('x', "\\i x");	gr->Label('y', "\\i z");
# 	gr->FPlot("-x", "k|");
# 	gr->Puts(mglPoint(0, 0.95), "Equation: ik_0\\partial_zu + \\Delta u + x\\cdot u + i \\frac{x+z}{2}\\cdot u = 0\nabsorption: (x+z)/2 for x+z>0");
# }
procs['pde'] = proc do
  a = MathGL::MglData.new
  re = MathGL::MglData.new(128)
  im = MathGL::MglData.new(128)
  fill(re,"exp(-48*(x+0.7)^2)")
  pde("p^2+q^2-x-1+i*0.5*(z+x)*(z>-x)", re, im, 0.01, 30)
  a.transpose("yxz")
  if !$mini
    sub_plot(1,1,0,"<_")
    title("PDE solver")
  end
  set_range('c',0,1)
  dens(a,"wyrRk")
  axis()
  label('x', "\\i x")
  label('y', "\\i z")
  fplot("-x", "k|")
  puts([0, 0.95], "Equation: ik_0\\partial_zu + \\Delta u + x\\cdot u + i \\frac{x+z}{2}\\cdot u = 0\nabsorption: (x+z)/2 for x+z>0")
end

# void smgl_conta(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	gr->Title("Cont3 sample");
# 	gr->Rotate(50,60);	gr->Box();
# 	gr->Cont3(c,"x");	gr->Cont3(c);	gr->Cont3(c,"z");
# }
procs['conta'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont3 sample")
  end
  rotate(50,60)
  box()
  cont3(c,"x")
  cont3(c)
  cont3(c,"z")
end

# void smgl_contfa(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	gr->Title("ContF3 sample");
# 	gr->Rotate(50,60);	gr->Light(true);	gr->Box();
# 	gr->ContF3(c,"x");	gr->ContF3(c);		gr->ContF3(c,"z");
# 	gr->Cont3(c,"kx");	gr->Cont3(c,"k");	gr->Cont3(c,"kz");
# }
procs['contfa'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("ContF3 sample")
  end
  rotate(50,60)
  light(true)
  box()
  cont_f3(c,"x")
  cont_f3(c)
  cont_f3(c,"z")
  cont3(c,"kx")
  cont3(c,"k")
  cont3(c,"kz")
end

# void smgl_densa(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	gr->Title("Dens3 sample");
# 	gr->Rotate(50,60);	gr->Alpha(true);	gr->SetAlphaDef(0.7);
# 	gr->SetOrigin(0,0,0);	gr->Axis("_xyz");	gr->Box();
# 	gr->Dens3(c,"x");	gr->Dens3(c);	gr->Dens3(c,"z");
# }
procs['densa'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens3 sample")
  end
  rotate(50,60)
  alpha(true)
  set_alpha_def(0.7)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  dens3(c,"x")
  dens3(c)
  dens3(c,"z")
end

# void smgl_dens_xyz(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	gr->Title("Dens[XYZ] sample");
# 	gr->Rotate(50,60);	gr->Box();	gr->DensX(c.Sum("x"),0,-1);
# 	gr->DensY(c.Sum("y"),0,1);		gr->DensZ(c.Sum("z"),0,-1);
# }
procs['dens_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens[XYZ] sample")
  end
  rotate(50,60)
  box()
  dens_x(c.sum("x"),"",-1)
  dens_y(c.sum("y"),"",1)
  dens_z(c.sum("z"),"",-1)
end

# void smgl_cont_xyz(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	gr->Title("Cont[XYZ] sample");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContX(c.Sum("x"),"",-1);
# 	gr->ContY(c.Sum("y"),"",1);		gr->ContZ(c.Sum("z"),"",-1);
# }
procs['cont_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_x(c.sum("x"),"",-1)
  cont_y(c.sum("y"),"",1)
  cont_z(c.sum("z"),"",-1)
end

# void smgl_contf_xyz(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	gr->Title("ContF[XYZ] sample");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContFX(c.Sum("x"),"",-1);
# 	gr->ContFY(c.Sum("y"),"",1);	gr->ContFZ(c.Sum("z"),"",-1);
# }
procs['contf_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("ContF[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_fx(c.sum("x"),"",-1)
  cont_fy(c.sum("y"),"",1)
  cont_fz(c.sum("z"),"",-1)
end

# void smgl_cloud(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Cloud plot");	}
# 	gr->Rotate(50,60);	gr->Alpha(true);
# 	gr->Box();	gr->Cloud(c,"wyrRk");
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'!' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cloud(c,"!wyrRk");
# 	gr->SubPlot(2,2,2);	gr->Title("'.' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cloud(c,".wyrRk");
# 	gr->SubPlot(2,2,3);	gr->Title("meshnum 10");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cloud(c,"wyrRk","meshnum 10");
# }
procs['cloud'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    sub_plot(2,2,0)
    title("Cloud plot")
  end
  rotate(50,60)
  alpha(true)
  box()
  cloud(c,"wyrRk")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'!' style")
  rotate(50,60)
  box()
  cloud(c,"!wyrRk")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  cloud(c,".wyrRk")
  sub_plot(2,2,3)
  title("meshnum 10")
  rotate(50,60)
  box()
  cloud(c,"wyrRk","meshnum 10")
end

# void smgl_cont(mglGraph *gr)
# {
# 	mglData a,v(5);	mgls_prepare2d(&a);	v.a[0]=-0.5;	v.a[1]=-0.15;	v.a[2]=0;	v.a[3]=0.15;	v.a[4]=0.5;
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Cont plot (default)");	}
# 	gr->Rotate(50,60);	gr->Box();	gr->Cont(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("manual levels");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cont(v,a);
# 	gr->SubPlot(2,2,2);	gr->Title("'\\_' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cont(a,"_");
# 	gr->SubPlot(2,2,3,"");	gr->Title("'t' style");
# 	gr->Box();	gr->Cont(a,"t");
# }
procs['cont'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  if !$mini
    sub_plot(2,2,0)
    title("Cont plot (default)")
  end
  rotate(50,60)
  box()
  cont(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont(a,"_")
  sub_plot(2,2,3,"")
  title("'t' style")
  box()
  cont(a,"t")
end

# void smgl_contf(mglGraph *gr)
# {
# 	mglData a,v(5),a1(30,40,3);	mgls_prepare2d(&a);	v.a[0]=-0.5;
# 	v.a[1]=-0.15;	v.a[2]=0;	v.a[3]=0.15;	v.a[4]=0.5;
# 	gr->Fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)");
#
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("ContF plot (default)");	}
# 	gr->Rotate(50,60);	gr->Box();	gr->ContF(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("manual levels");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContF(v,a);
# 	gr->SubPlot(2,2,2);	gr->Title("'\\_' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContF(a,"_");
# 	gr->SubPlot(2,2,3);	gr->Title("several slices");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContF(a1);
# }
procs['contf'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0)
    title("ContF plot (default)")
  end
  rotate(50,60)
  box()
  cont_f(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_f(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_f(a,"_")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  cont_f(a1)
end

# void smgl_contd(mglGraph *gr)
# {
# 	mglData a,v(5),a1(30,40,3);	mgls_prepare2d(&a);	v.a[0]=-0.5;
# 	v.a[1]=-0.15;	v.a[2]=0;	v.a[3]=0.15;	v.a[4]=0.5;
# 	gr->Fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)");
#
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("ContD plot (default)");	}
# 	gr->Rotate(50,60);	gr->Box();	gr->ContD(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("manual levels");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContD(v,a);
# 	gr->SubPlot(2,2,2);	gr->Title("'\\_' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContD(a,"_");
# 	gr->SubPlot(2,2,3);	gr->Title("several slices");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContD(a1);
# }
procs['contd'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0)
    title("ContD plot (default)")
  end
  rotate(50,60)
  box()
  cont_d(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_d(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_d(a,"_")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  cont_d(a1)
end

# void smgl_contv(mglGraph *gr)
# {
# 	mglData a,v(5);	mgls_prepare2d(&a);	v.a[0]=-0.5;
# 	v.a[1]=-0.15;	v.a[2]=0;	v.a[3]=0.15;	v.a[4]=0.5;
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("ContV plot (default)");	}
# 	gr->Rotate(50,60);	gr->Box();	gr->ContV(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("manual levels");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContV(v,a);
# 	gr->SubPlot(2,2,2);	gr->Title("'\\_' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->ContV(a,"_");
# 	gr->SubPlot(2,2,3);	gr->Title("ContV and ContF");
# 	gr->Rotate(50,60);	gr->Box();	gr->Light(true);
# 	gr->ContV(a);	gr->ContF(a);	gr->Cont(a,"k");
# }
procs['contv'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  if !$mini
    sub_plot(2,2,0)
    title("ContV plot (default)")
  end
  rotate(50,60)
  box()
  cont_v(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_v(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_v(a,"_")
  sub_plot(2,2,3)
  title("ContV and ContF")
  rotate(50,60)
  box()
  light(true)
  cont_v(a)
  cont_f(a)
  cont(a,"k")
end

# void smgl_torus(mglGraph *gr)
# {
# 	mglData y1,y2;	mgls_prepare1d(0,&y1,&y2);
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Torus plot (default)");	}
# 	gr->Light(true);	gr->Rotate(50,60);	gr->Box();	gr->Torus(y1,y2);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'x' style");	gr->Rotate(50,60);	gr->Box();	gr->Torus(y1,y2,"x");
# 	gr->SubPlot(2,2,2);	gr->Title("'z' style");	gr->Rotate(50,60);	gr->Box();	gr->Torus(y1,y2,"z");
# 	gr->SubPlot(2,2,3);	gr->Title("'\\#' style");	gr->Rotate(50,60);	gr->Box();	gr->Torus(y1,y2,"#");
# }
procs['torus'] = proc do
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(nil,y1,y2)
  if !$mini
    sub_plot(2,2,0)
    title("Torus plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  torus(y1,y2)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'x' style")
  rotate(50,60)
  box()
  torus(y1,y2,"x")
  sub_plot(2,2,2)
  title("'z' style")
  rotate(50,60)
  box()
  torus(y1,y2,"z")
  sub_plot(2,2,3)
  title("'\\#' style")
  rotate(50,60)
  box()
  torus(y1,y2,"#")
end

# void smgl_axial(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Axial plot (default)");	}
# 	gr->Light(true);	gr->Alpha(true);	gr->Rotate(50,60);	gr->Box();	gr->Axial(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'x' style; '.'style");	gr->Rotate(50,60);	gr->Box();	gr->Axial(a,"x.");
# 	gr->SubPlot(2,2,2);	gr->Title("'z' style");	gr->Rotate(50,60);	gr->Box();	gr->Axial(a,"z");
# 	gr->SubPlot(2,2,3);	gr->Title("'\\#' style");	gr->Rotate(50,60);	gr->Box();	gr->Axial(a,"#");
# }
procs['axial'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(2,2,0)
    title("Axial plot (default)")
  end
  light(true)
  alpha(true)
  rotate(50,60)
  box()
  axial(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'x' style; '.'style")
  rotate(50,60)
  box()
  axial(a,"x.")
  sub_plot(2,2,2)
  title("'z' style")
  rotate(50,60)
  box()
  axial(a,"z")
  sub_plot(2,2,3)
  title("'\\#' style")
  rotate(50,60)
  box()
  axial(a,"#")
end

# void smgl_several_light(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	gr->Title("Several light sources");
# 	gr->Rotate(50,60);	gr->Light(true);	gr->AddLight(1,mglPoint(0,1,0),'c');
# 	gr->AddLight(2,mglPoint(1,0,0),'y');	gr->AddLight(3,mglPoint(0,-1,0),'m');
# 	gr->Box();	gr->Surf(a,"h");
# }
procs['several_light'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Several light sources")
  end
  rotate(50,60)
  light(true)
  add_light(1,[0,1,0],'c')
  add_light(2,[1,0,0],'y')
  add_light(3,[0,-1,0],'m')
  box()
  surf(a,"h")
end

# void smgl_surf3(mglGraph *gr)
# {
# 	mglData c;	mgls_prepare3d(&c);
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Surf3 plot (default)");	}
# 	gr->Rotate(50,60);	gr->Light(true);	gr->Alpha(true);
# 	gr->Box();	gr->Surf3(c);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'\\#' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Surf3(c,"#");
# 	gr->SubPlot(2,2,2);	gr->Title("'.' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Surf3(c,".");
# }
procs['surf3'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    sub_plot(2,2,0)
    title("Surf3 plot (default)")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf3(c)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style")
  rotate(50,60)
  box()
  surf3(c,"#")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  surf3(c,".")
end

# void smgl_surf3a(mglGraph *gr)
# {
# 	mglData c,d;	mgls_prepare3d(&c,&d);
# 	if(!mini)	gr->Title("Surf3A plot");
# 	gr->Rotate(50,60);	gr->Light(true);	gr->Alpha(true);
# 	gr->Box();	gr->Surf3A(c,d);
# }
procs['surf3a'] = proc do
  c = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare3d(c,d)
  if !$mini
    title("Surf3A plot")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf_3a(c,d)
end

# void smgl_surf3c(mglGraph *gr)
# {
# 	mglData c,d;	mgls_prepare3d(&c,&d);
# 	if(!mini)	gr->Title("Surf3C plot");
# 	gr->Rotate(50,60);	gr->Light(true);	gr->Alpha(true);
# 	gr->Box();	gr->Surf3C(c,d);
# }
procs['surf3c'] = proc do
  c = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare3d(c,d)
  if !$mini
    title("Surf3C plot")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf_3c(c,d)
end

# void smgl_cut(mglGraph *gr)
# {
# 	mglData a,c,v(1);	mgls_prepare2d(&a);	mgls_prepare3d(&c);	v.a[0]=0.5;
# 	gr->SubPlot(2,2,0);	gr->Title("Cut on (default)");	gr->Rotate(50,60);	gr->Light(true);
# 	gr->Box();	gr->Surf(a,"","zrange -1 0.5");
# 	gr->SubPlot(2,2,1);	gr->Title("Cut off");		gr->Rotate(50,60);
# 	gr->Box();	gr->Surf(a,"","zrange -1 0.5; cut off");
# 	gr->SubPlot(2,2,2);	gr->Title("Cut in box");	gr->Rotate(50,60);
# 	gr->SetCutBox(mglPoint(0,-1,-1), mglPoint(1,0,1.1));
# 	gr->Alpha(true);	gr->Box();	gr->Surf3(c);
# 	gr->SetCutBox(mglPoint(0), mglPoint(0));
# 	gr->SubPlot(2,2,3);	gr->Title("Cut by formula");	gr->Rotate(50,60);
# 	gr->CutOff("(z>(x+0.5*y-1)^2-1) & (z>(x-0.5*y-1)^2-1)");
# 	gr->Box();	gr->Surf3(c);	gr->CutOff("");
# }
procs['cut'] = proc do
  a = MathGL::MglData.new
  c = MathGL::MglData.new
  v = MathGL::MglData.new(1)
  mgls_prepare2d(a)
  mgls_prepare3d(c)
  v.set_val(0.5,0)
  sub_plot(2,2,0)
  title("Cut on (default)")
  rotate(50,60)
  light(true)
  box()
  surf(a,"","zrange -1 0.5")
  sub_plot(2,2,1)
  title("Cut off")
  rotate(50,60)
  box()
  surf(a,"","zrange -1 0.5; cut off")
  sub_plot(2,2,2)
  title("Cut inp box")
  rotate(50,60)
  set_cut_box([0,-1,-1], [1,0,1.1])
  alpha(true)
  box()
  surf3(c)
  set_cut_box([0], [0])
  sub_plot(2,2,3)
  title("Cut by formula")
  rotate(50,60)
  cut_off("(z>(x+0.5*y-1)^2-1) & (z>(x-0.5*y-1)^2-1)")
  box()
  surf3(c)
  cut_off("")
end

# void smgl_traj(mglGraph *gr)
# {
# 	mglData x,y,y1,y2;	mgls_prepare1d(&y,&y1,&y2,&x);
# 	if(!mini)	{gr->SubPlot(1,1,0,"");	gr->Title("Traj plot");}
# 	gr->Box();	gr->Plot(x,y);	gr->Traj(x,y,y1,y2);
# }
procs['traj'] = proc do
  x = MathGL::MglData.new
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(y,y1,y2,x)
  if !$mini
    sub_plot(1,1,0,"")
    title("Traj plot")
  end
  box()
  plot(x,y)
  traj(x,y,y1,y2)
end

# void smgl_mesh(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	gr->Title("Mesh plot");
# 	gr->Rotate(50,60);	gr->Box();	gr->Mesh(a);
# }
procs['mesh'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Mesh plot")
  end
  rotate(50,60)
  box()
  mesh(a)
end

# void smgl_fall(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	gr->Title("Fall plot");
# 	gr->Rotate(50,60);	gr->Box();	gr->Fall(a);
# }
procs['fall'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Fall plot")
  end
  rotate(50,60)
  box()
  fall(a)
end

# void smgl_surf(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Surf plot (default)");	}
# 	gr->Light(true);	gr->Rotate(50,60);	gr->Box();	gr->Surf(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'\\#' style; meshnum 10");
# 	gr->Rotate(50,60);	gr->Box();	gr->Surf(a,"#","meshnum 10");
# 	gr->SubPlot(2,2,2);	gr->Title("'.' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Surf(a,".");
# 	gr->SubPlot(2,2,3);	gr->Title("parametric form");
# 	mglData x(50,40),y(50,40),z(50,40);
# 	gr->Fill(x,"0.8*sin(pi*x)*sin(pi*(y+1)/2)");
# 	gr->Fill(y,"0.8*cos(pi*x)*sin(pi*(y+1)/2)");
# 	gr->Fill(z,"0.8*cos(pi*(y+1)/2)");
# 	gr->Rotate(50,60);	gr->Box();	gr->Surf(x,y,z,"BbwrR");
# }
procs['surf'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(2,2,0)
    title("Surf plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  surf(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style; meshnum 10")
  rotate(50,60)
  box()
  surf(a,"#","meshnum 10")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  surf(a,".")
  sub_plot(2,2,3)
  title("parametric form")
  x = MathGL::MglData.new(50,40)
  y = MathGL::MglData.new(50,40)
  z = MathGL::MglData.new(50,40)
  fill(x,"0.8*sin(pi*x)*sin(pi*(y+1)/2)")
  fill(y,"0.8*cos(pi*x)*sin(pi*(y+1)/2)")
  fill(z,"0.8*cos(pi*(y+1)/2)")
  rotate(50,60)
  box()
  surf(x,y,z,"BbwrR")
end

# void smgl_belt(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	gr->Title("Belt plot");
# 	gr->Rotate(50,60);	gr->Box();	gr->Belt(a);
# }
procs['belt'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Belt plot")
  end
  rotate(50,60)
  box()
  belt(a)
end

# void smgl_dens(mglGraph *gr)
# {
# 	mglData a,a1(30,40,3);	mgls_prepare2d(&a);
# 	gr->Fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)");
# 	if(!mini)	{gr->SubPlot(2,2,0,"");	gr->Title("Dens plot (default)");}
# 	gr->Box();	gr->Dens(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("3d variant");
# 	gr->Rotate(50,60);	gr->Box();	gr->Dens(a);
# 	gr->SubPlot(2,2,2,"");	gr->Title("'\\#' style; meshnum 10");
# 	gr->Box();	gr->Dens(a,"#","meshnum 10");
# 	gr->SubPlot(2,2,3);	gr->Title("several slices");
# 	gr->Rotate(50,60);		gr->Box();	gr->Dens(a1);
# }
procs['dens'] = proc do
  a = MathGL::MglData.new
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Dens plot (default)")
  end
  box()
  dens(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  dens(a)
  sub_plot(2,2,2,"")
  title("'\\#' style; meshnum 10")
  box()
  dens(a,"#","meshnum 10")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  dens(a1)
end

# void smgl_surfc(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2d(&a,&b);
# 	if(!mini)	gr->Title("SurfC plot");	gr->Rotate(50,60);
# 	gr->Light(true);	gr->Box();	gr->SurfC(a,b);
# }
procs['surfc'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfC plot")
  end
  rotate(50,60)
  light(true)
  box()
  surf_c(a,b)
end

# void smgl_surfa(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2d(&a,&b);
# 	if(!mini)	gr->Title("SurfA plot");	gr->Rotate(50,60);
# 	gr->Alpha(true);	gr->Light(true);	gr->Box();	gr->SurfA(a,b);
# }
procs['surfa'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfA plot")
  end
  rotate(50,60)
  alpha(true)
  light(true)
  box()
  surf_a(a,b)
end

# void smgl_tile(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	gr->Title("Tile plot");
# 	gr->Rotate(40,60);	gr->Box();	gr->Tile(a);
# }
procs['tile'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Tile plot")
  end
  rotate(40,60)
  box()
  tile(a)
end

# void smgl_tiles(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2d(&a,&b);
# 	if(!mini)	{gr->SubPlot(1,1,0,"");	gr->Title("TileS plot");}
# 	gr->Box();	gr->TileS(a,b);
# }
procs['tiles'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    sub_plot(1,1,0,"")
    title("TileS plot")
  end
  box()
  tile_s(a,b)
end

# void smgl_boxs(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	gr->SetOrigin(0,0,0);	gr->Light(true);
# 	if(!mini)	{gr->SubPlot(2,2,0);	gr->Title("Boxs plot (default)");}
# 	gr->Rotate(40,60);	gr->Box();	gr->Boxs(a);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("'\\@' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Boxs(a,"@");
# 	gr->SubPlot(2,2,2);	gr->Title("'\\#' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Boxs(a,"#");
# 	gr->SubPlot(2,2,3);	gr->Title("compare with Tile");
# 	gr->Rotate(50,60);	gr->Box();	gr->Tile(a);
# }
procs['boxs'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_origin(0,0,0)
  light(true)
  if !$mini
    sub_plot(2,2,0)
    title("Boxs plot (default)")
  end
  rotate(40,60)
  box()
  boxs(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\@' style")
  rotate(50,60)
  box()
  boxs(a,"@")
  sub_plot(2,2,2)
  title("'\\#' style")
  rotate(50,60)
  box()
  boxs(a,"#")
  sub_plot(2,2,3)
  title("compare with Tile")
  rotate(50,60)
  box()
  tile(a)
end

# void smgl_fit(mglGraph *gr)
# {
# 	mglData rnd(100), in(100), res;
# 	gr->Fill(rnd,"0.4*rnd+0.1+sin(2*pi*x)");
# 	gr->Fill(in,"0.3+sin(2*pi*x)");
# 	double ini[3] = {1,1,3};
# 	mglData Ini(3,ini);
# 	res = gr->Fit(rnd, "a+b*sin(c*x)", "abc", Ini);
# 	if(!mini)	gr->Title("Fitting sample");
# 	gr->SetRange('y',-2,2);	gr->Box();	gr->Plot(rnd, ". ");
# 	gr->Axis();		gr->Plot(res, "r");	gr->Plot(in, "b");
# 	gr->Puts(mglPoint(-0.9, -1.3), "fitted:", "r:L");
# 	gr->PutsFit(mglPoint(0, -1.8), "y = ", "r");
# 	gr->Puts(mglPoint(0, 2.2), "initial: y = 0.3+sin(2\\pi x)", "b");
#
# }
procs['fit'] = proc do
  rnd = MathGL::MglData.new(100)
  inp = MathGL::MglData.new(100)
  res = MathGL::MglData.new
  fill(rnd,"0.4*rnd+0.1+sin(2*pi*x)")
  fill(inp,"0.3+sin(2*pi*x)")
  ini = [1,1,3]
  Ini = MathGL::MglData.new(ini)
  fit(rnd, "a+b*sin(c*x)", "abc", Ini)
  if !$mini
    title("Fitting sample")
  end
  set_range('y',-2,2)
  box()
  plot(rnd, ". ")
  axis()
  plot(res, "r")
  plot(inp, "b")
  puts([-0.9, -1.3], "fitted:", "r:")
  puts_fit([0, -1.8], "y = ", "r")
  puts([0, 2.2], "initial: y = 0.3+sin(2\\pi x)", "b")
end

# void smgl_vecta(mglGraph *gr)
# {
# 	mglData ex,ey,ez;	mgls_prepare3v(&ex,&ey,&ez);
# 	if(!mini)	{	gr->SubPlot(2,1,0);	gr->Title("Vect3 sample");	}
# 	gr->Rotate(50,60);	gr->SetOrigin(0,0,0);	gr->Axis("_xyz");	gr->Box();
# 	gr->Vect3(ex,ey,ez,"x");	gr->Vect3(ex,ey,ez);	gr->Vect3(ex,ey,ez,"z");
# 	if(mini)	return;
# 	gr->SubPlot(2,1,1);	gr->Title("'f' style");
# 	gr->Rotate(50,60);	gr->SetOrigin(0,0,0);	gr->Axis("_xyz");	gr->Box();
# 	gr->Vect3(ex,ey,ez,"fx");	gr->Vect3(ex,ey,ez,"f");	gr->Vect3(ex,ey,ez,"fz");
# 	gr->Grid3(ex,"Wx");	gr->Grid3(ex,"W");	gr->Grid3(ex,"Wz");
# }
procs['vecta'] = proc do
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  if !$mini
    sub_plot(2,1,0)
    title("Vect3 sample")
  end
  rotate(50,60)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  vect3(ex,ey,ez,"x")
  vect3(ex,ey,ez)
  vect3(ex,ey,ez,"z")
  if $mini
    return
  end
  sub_plot(2,1,1)
  title("'f' style")
  rotate(50,60)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  vect3(ex,ey,ez,"fx")
  vect3(ex,ey,ez,"f")
  vect3(ex,ey,ez,"fz")
  grid3(ex,"Wx")
  grid3(ex,"W")
  grid3(ex,"Wz")
end

# void smgl_vect(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2v(&a,&b);
# 	if(!mini)	{gr->SubPlot(3,2,0,"");	gr->Title("Vect plot (default)");}
# 	gr->Box();	gr->Vect(a,b);
# 	if(mini)	return;
# 	gr->SubPlot(3,2,1,"");	gr->Title("'.' style; '=' style");	gr->Box();	gr->Vect(a,b,"=.");
# 	gr->SubPlot(3,2,2,"");	gr->Title("'f' style");	gr->Box();	gr->Vect(a,b,"f");
# 	gr->SubPlot(3,2,3,"");	gr->Title("'>' style");	gr->Box();	gr->Vect(a,b,">");
# 	gr->SubPlot(3,2,4,"");	gr->Title("'<' style");	gr->Box();	gr->Vect(a,b,"<");
# 	mglData ex,ey,ez;	mgls_prepare3v(&ex,&ey,&ez);
# 	gr->SubPlot(3,2,5);	gr->Title("3d variant");	gr->Rotate(50,60);
# 	gr->Box();	gr->Vect(ex,ey,ez);
# }
procs['vect'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(3,2,0,"")
    title("Vect plot (default)")
  end
  box()
  vect(a,b)
  if $mini
    return
  end
  sub_plot(3,2,1,"")
  title("'.' style; '=' style")
  box()
  vect(a,b,"=.")
  sub_plot(3,2,2,"")
  title("'f' style")
  box()
  vect(a,b,"f")
  sub_plot(3,2,3,"")
  title("'>' style")
  box()
  vect(a,b,">")
  sub_plot(3,2,4,"")
  title("'<' style")
  box()
  vect(a,b,"<")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(3,2,5)
  title("3d variant")
  rotate(50,60)
  box()
  vect(ex,ey,ez)
end

# void smgl_flow(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2v(&a,&b);
# 	if(!mini)	{gr->SubPlot(2,2,0,"");	gr->Title("Flow plot (default)");}
# 	gr->Box();	gr->Flow(a,b);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("'v' style");	gr->Box();	gr->Flow(a,b,"v");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'\\#' style");	gr->Box();	gr->Flow(a,b,"#");
# 	mglData ex,ey,ez;	mgls_prepare3v(&ex,&ey,&ez);
# 	gr->SubPlot(2,2,3);	gr->Title("3d variant");	gr->Rotate(50,60);
# 	gr->Box();	gr->Flow(ex,ey,ez);
# }
procs['flow'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(2,2,0,"")
    title("Flow plot (default)")
  end
  box()
  flow(a,b)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'v' style")
  box()
  flow(a,b,"v")
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  flow(a,b,"#")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  flow(ex,ey,ez)
end

# void smgl_pipe(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2v(&a,&b);
# 	if(!mini)	{gr->SubPlot(2,2,0,"");	gr->Title("Pipe plot (default)");}
# 	gr->Light(true);	gr->Box();	gr->Pipe(a,b);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1,"");	gr->Title("'i' style");	gr->Box();	gr->Pipe(a,b,"i");
# 	gr->SubPlot(2,2,2,"");	gr->Title("'\\#' style");	gr->Box();	gr->Pipe(a,b,"#");
# 	mglData ex,ey,ez;	mgls_prepare3v(&ex,&ey,&ez);
# 	gr->SubPlot(2,2,3);	gr->Title("3d variant");	gr->Rotate(50,60);
# 	gr->Box();	gr->Pipe(ex,ey,ez,"",0.1);
# }
procs['pipe'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(2,2,0,"")
    title("Pipe plot (default)")
  end
  light(true)
  box()
  pipe(a,b)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'i' style")
  box()
  pipe(a,b,"i")
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  pipe(a,b,"#")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  pipe(ex,ey,ez,"",0.1)
end

# void smgl_dew(mglGraph *gr)
# {
# 	mglData a,b;	mgls_prepare2v(&a,&b);
# 	if(!mini)	{gr->SubPlot(1,1,0,"");	gr->Title("Dew plot");}
# 	gr->Box();	gr->Light(true);	gr->Dew(a,b);
# }
procs['dew'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(1,1,0,"")
    title("Dew plot")
  end
  box()
  light(true)
  dew(a,b)
end

# void smgl_grad(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	if(!mini)	{gr->SubPlot(1,1,0,"");	gr->Title("Grad plot");}
# 	gr->Box();	gr->Grad(a);	gr->Dens(a,"{u8}w{q8}");
# }
procs['grad'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(1,1,0,"")
    title("Grad plot")
  end
  box()
  grad(a)
  dens(a,"{u8}w{q8}")
end

# void smgl_cones(mglGraph *gr)
# {
# 	mglData ys(10,3);	ys.Modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd");
# 	gr->Light(true);	gr->SetOrigin(0,0,0);
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Cones plot");	}
# 	gr->Rotate(50,60);	gr->Box();	gr->Cones(ys);
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("2 colors");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cones(ys,"cbgGyr");
# 	gr->SubPlot(2,2,2);	gr->Title("'\\#' style");
# 	gr->Rotate(50,60);	gr->Box();	gr->Cones(ys,"#");
# 	gr->SubPlot(2,2,3);	gr->Title("'a' style");
# 	gr->SetRange('z',-2,2);
# 	gr->Rotate(50,60);	gr->Box();	gr->Cones(ys,"a");
# }
procs['cones'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  light(true)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0)
    title("Cones plot")
  end
  rotate(50,60)
  box()
  cones(ys)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("2 colors")
  rotate(50,60)
  box()
  cones(ys,"cbgGyr")
  sub_plot(2,2,2)
  title("'\\#' style")
  rotate(50,60)
  box()
  cones(ys,"#")
  sub_plot(2,2,3)
  title("'a' style")
  set_range('z',-2,2)
  rotate(50,60)
  box()
  cones(ys,"a")
end

# void smgl_aspect(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0);	gr->Box();
# 	gr->Puts(mglPoint(-1,1.1),"Just box",":L");
# 	gr->InPlot(0.2,0.5,0.7,1,false);	gr->Box();
# 	gr->Puts(mglPoint(0,1.2),"InPlot example");
# 	gr->SubPlot(2,2,1);	gr->Title("Rotate only");
# 	gr->Rotate(50,60);	gr->Box();
# 	gr->SubPlot(2,2,2);	gr->Title("Rotate and Aspect");
# 	gr->Rotate(50,60);	gr->Aspect(1,1,2);	gr->Box();
# 	gr->SubPlot(2,2,3);	gr->Title("Aspect in other direction");
# 	gr->Rotate(50,60);	gr->Aspect(1,2,2);	gr->Box();
# }
procs['aspect'] = proc do
  sub_plot(2,2,0)
  box()
  puts([-1,1.1],"Just box",":")
  in_plot(0.2,0.5,0.7,1,false)
  box()
  puts([0,1.2],"InPlot example")
  sub_plot(2,2,1)
  title("Rotate only")
  rotate(50,60)
  box()
  sub_plot(2,2,2)
  title("Rotate and Aspect")
  rotate(50,60)
  aspect(1,1,2)
  box()
  sub_plot(2,2,3)
  title("Aspect inp other direction")
  rotate(50,60)
  aspect(1,2,2)
  box()
end

# void smgl_inplot(mglGraph *gr)
# {
# 	gr->SubPlot(3,2,0);	gr->Title("StickPlot");
# 	gr->StickPlot(3, 0, 20, 30);	gr->Box("r");	gr->Puts(mglPoint(0),"0","r");
# 	gr->StickPlot(3, 1, 20, 30);	gr->Box("g");	gr->Puts(mglPoint(0),"1","g");
# 	gr->StickPlot(3, 2, 20, 30);	gr->Box("b");	gr->Puts(mglPoint(0),"2","b");
# 	gr->SubPlot(3,2,3,"");	gr->Title("ColumnPlot");
# 	gr->ColumnPlot(3, 0);	gr->Box("r");	gr->Puts(mglPoint(0),"0","r");
# 	gr->ColumnPlot(3, 1);	gr->Box("g");	gr->Puts(mglPoint(0),"1","g");
# 	gr->ColumnPlot(3, 2);	gr->Box("b");	gr->Puts(mglPoint(0),"2","b");
# 	gr->SubPlot(3,2,4,"");	gr->Title("GridPlot");
# 	gr->GridPlot(2, 2, 0);	gr->Box("r");	gr->Puts(mglPoint(0),"0","r");
# 	gr->GridPlot(2, 2, 1);	gr->Box("g");	gr->Puts(mglPoint(0),"1","g");
# 	gr->GridPlot(2, 2, 2);	gr->Box("b");	gr->Puts(mglPoint(0),"2","b");
# 	gr->GridPlot(2, 2, 3);	gr->Box("m");	gr->Puts(mglPoint(0),"3","m");
# 	gr->SubPlot(3,2,5,"");	gr->Title("InPlot");	gr->Box();
# 	gr->InPlot(0.4, 1, 0.6, 1, true);	gr->Box("r");
# 	gr->MultiPlot(3,2,1, 2, 1,"");	gr->Title("MultiPlot");	gr->Box();
# }
procs['inplot'] = proc do
  sub_plot(3,2,0)
  title("StickPlot")
  stick_plot(3, 0, 20, 30)
  box("r")
  puts([0],"0","r")
  stick_plot(3, 1, 20, 30)
  box("g")
  puts([0],"1","g")
  stick_plot(3, 2, 20, 30)
  box("b")
  puts([0],"2","b")
  sub_plot(3,2,3,"")
  title("ColumnPlot")
  column_plot(3, 0)
  box("r")
  puts([0],"0","r")
  column_plot(3, 1)
  box("g")
  puts([0],"1","g")
  column_plot(3, 2)
  box("b")
  puts([0],"2","b")
  sub_plot(3,2,4,"")
  title("GridPlot")
  grid_plot(2, 2, 0)
  box("r")
  puts([0],"0","r")
  grid_plot(2, 2, 1)
  box("g")
  puts([0],"1","g")
  grid_plot(2, 2, 2)
  box("b")
  puts([0],"2","b")
  grid_plot(2, 2, 3)
  box("m")
  puts([0],"3","m")
  sub_plot(3,2,5,"")
  title("InPlot")
  box()
  in_plot(0.4, 1, 0.6, 1, true)
  box("r")
  multi_plot(3,2,1, 2, 1,"")
  title("MultiPlot")
  box()
end

# void smgl_combined(mglGraph *gr)
# {
# 	mglData a,b,d;	mgls_prepare2v(&a,&b);	d = a;
# 	for(int i=0;i<a.nx*a.ny;i++)	d.a[i] = hypot(a.a[i],b.a[i]);
# 	mglData c;	mgls_prepare3d(&c);
# 	mglData v(10);	v.Fill(-0.5,1);
# 	gr->SubPlot(2,2,1,"");	gr->Title("Flow + Dens");
# 	gr->Flow(a,b,"br");	gr->Dens(d);	gr->Box();
# 	gr->SubPlot(2,2,0);	gr->Title("Surf + Cont");	gr->Rotate(50,60);
# 	gr->Light(true);	gr->Surf(a);	gr->Cont(a,"y");	gr->Box();
# 	gr->SubPlot(2,2,2);	gr->Title("Mesh + Cont");	gr->Rotate(50,60);
# 	gr->Box();	gr->Mesh(a);	gr->Cont(a,"_");
# 	gr->SubPlot(2,2,3);	gr->Title("Surf3 + ContF3");gr->Rotate(50,60);
# 	gr->Box();	gr->ContF3(v,c,"z",0);	gr->ContF3(v,c,"x");	gr->ContF3(v,c);
# 	gr->SetCutBox(mglPoint(0,-1,-1), mglPoint(1,0,1.1));
# 	gr->ContF3(v,c,"z",c.nz-1);	gr->Surf3(-0.5,c);
# }
procs['combined'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare2v(a,b)
  d = a
  for j in 0...a.ny
    for i in 0...a.nx
      d.set_val(Math.hypot(a.get_val(i,j),b.get_val(i,j)), i,j)
    end
  end
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  v = MathGL::MglData.new(10)
  v.fill(-0.5,1)
  sub_plot(2,2,1,"")
  title("Flow + Dens")
  flow(a,b,"br")
  dens(d)
  box()
  sub_plot(2,2,0)
  title("Surf + Cont")
  rotate(50,60)
  light(true)
  surf(a)
  cont(a,"y")
  box()
  sub_plot(2,2,2)
  title("Mesh + Cont")
  rotate(50,60)
  box()
  mesh(a)
  cont(a,"_")
  sub_plot(2,2,3)
  title("Surf3 + ContF3")
  rotate(50,60)
  box()
  cont_f3(v,c,"z",0)
  cont_f3(v,c,"x")
  cont_f3(v,c)
  set_cut_box([0,-1,-1], [1,0,1.1])
  cont_f3(v,c,"z",c.nz-1)
  surf3(-0.5,c)
end

# void smgl_axis(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0);	gr->Title("Axis origin, Grid");	gr->SetOrigin(0,0);
# 	gr->Axis();	gr->Grid();	gr->FPlot("x^3");
#
# 	gr->SubPlot(2,2,1);	gr->Title("2 axis");
# 	gr->SetRanges(-1,1,-1,1);	gr->SetOrigin(-1,-1,-1);
# 	gr->Axis();	gr->Label('y',"axis 1",0);	gr->FPlot("sin(pi*x)","r2");
# 	gr->SetRanges(0,1,0,1);		gr->SetOrigin(1,1,1);
# 	gr->Axis();	gr->Label('y',"axis 2",0);	gr->FPlot("cos(pi*x)");
#
# 	gr->SubPlot(2,2,3);	gr->Title("More axis");	gr->SetOrigin(NAN,NAN);	gr->SetRange('x',-1,1);
# 	gr->Axis();	gr->Label('x',"x",0);	gr->Label('y',"y_1",0);	gr->FPlot("x^2","k");
# 	gr->SetRanges(-1,1,-1,1);	gr->SetOrigin(-1.3,-1);
# 	gr->Axis("y","r");	gr->Label('y',"#r{y_2}",0.2);	gr->FPlot("x^3","r");
#
# 	gr->SubPlot(2,2,2);	gr->Title("4 segments, inverted axis");		gr->SetOrigin(0,0);
# 	gr->InPlot(0.5,1,0.5,1);	gr->SetRanges(0,10,0,2);	gr->Axis();
# 	gr->FPlot("sqrt(x/2)");		gr->Label('x',"W",1);	gr->Label('y',"U",1);
# 	gr->InPlot(0,0.5,0.5,1);	gr->SetRanges(1,0,0,2);	gr->Axis("x");
# 	gr->FPlot("sqrt(x)+x^3");	gr->Label('x',"\\tau",-1);
# 	gr->InPlot(0.5,1,0,0.5);	gr->SetRanges(0,10,4,0);	gr->Axis("y");
# 	gr->FPlot("x/4");	gr->Label('y',"L",-1);
# 	gr->InPlot(0,0.5,0,0.5);	gr->SetRanges(1,0,4,0);	gr->FPlot("4*x^2");
# }
procs['axis'] = proc do
  sub_plot(2,2,0)
  title("Axis origin, Grid")
  set_origin(0,0)
  axis()
  grid()
  fplot("x^3")
  sub_plot(2,2,1)
  title("2 axis")
  set_ranges(-1,1,-1,1)
  set_origin(-1,-1,-1)
  axis()
  label('y',"axis 1",0)
  fplot("sin(pi*x)","r2")
  set_ranges(0,1,0,1)
  set_origin(1,1,1)
  axis()
  label('y',"axis 2",0)
  fplot("cos(pi*x)")
  sub_plot(2,2,3)
  title("More axis")
  set_origin(NAN,NAN)
  set_range('x',-1,1)
  axis()
  label('x',"x",0)
  label('y',"y_1",0)
  fplot("x^2","k")
  set_ranges(-1,1,-1,1)
  set_origin(-1.3,-1)
  axis("y","r")
  label('y',"#r{y_2}",0.2)
  fplot("x^3","r")
  sub_plot(2,2,2)
  title("4 segments, inverted axis")
  set_origin(0,0)
  in_plot(0.5,1,0.5,1)
  set_ranges(0,10,0,2)
  axis()
  fplot("sqrt(x/2)")
  label('x',"W",1)
  label('y',"U",1)
  in_plot(0,0.5,0.5,1)
  set_ranges(1,0,0,2)
  axis("x")
  fplot("sqrt(x)+x^3")
  label('x',"\\tau",-1)
  in_plot(0.5,1,0,0.5)
  set_ranges(0,10,4,0)
  axis("y")
  fplot("x/4")
  label('y',"",-1)
  in_plot(0,0.5,0,0.5)
  set_ranges(1,0,4,0)
  fplot("4*x^2")
end

# void smgl_ticks(mglGraph *gr)
# {
# 	gr->SubPlot(3,2,0);	gr->Title("Usual axis");	gr->Axis();
# 	gr->SubPlot(3,2,1);	gr->Title("Too big/small range");
# 	gr->SetRanges(-1000,1000,0,0.001);	gr->Axis();
# 	gr->SubPlot(3,2,3);	gr->Title("Too narrow range");
# 	gr->SetRanges(100,100.1,10,10.01);	gr->Axis();
# 	gr->SubPlot(3,2,4);	gr->Title("Disable ticks tuning");
# 	gr->SetTuneTicks(0);	gr->Axis();
#
# 	gr->SubPlot(3,2,2);	gr->Title("Manual ticks");	gr->SetRanges(-M_PI,M_PI, 0, 2);
# 	double val[]={-M_PI, -M_PI/2, 0, 0.886, M_PI/2, M_PI};
# 	gr->SetTicksVal('x', mglData(6,val), "-\\pi\n-\\pi/2\n0\nx^*\n\\pi/2\n\\pi");
# 	gr->Axis();	gr->Grid();	gr->FPlot("2*cos(x^2)^2", "r2");
#
# 	gr->SubPlot(3,2,5);	gr->Title("Time ticks");	gr->SetRange('x',0,3e5);
# 	gr->SetTicksTime('x',0);	gr->Axis();
# }
procs['ticks'] = proc do
  sub_plot(3,2,0)
  title("Usual axis")
  axis()
  sub_plot(3,2,1)
  title("Too big/small range")
  set_ranges(-1000,1000,0,0.001)
  axis()
  sub_plot(3,2,3)
  title("Too narrow range")
  set_ranges(100,100.1,10,10.01)
  axis()
  sub_plot(3,2,4)
  title("Disable ticks tuning")
  set_tune_ticks(0)
  axis()
  sub_plot(3,2,2)
  title("Manual ticks")
  set_ranges(-M_PI,M_PI, 0, 2)
  val = [-M_PI, -M_PI/2, 0, 0.886, M_PI/2, M_PI]
  set_ticks_val('x', MathGL::MglData.new(val), "-\\pi\n-\\pi/2\n0\nx^*\n\\pi/2\n\\pi")
  axis()
  grid()
  fplot("2*cos(x^2)^2", "r2")
  sub_plot(3,2,5)
  title("Time ticks")
  set_range('x',0,3e5)
  set_ticks_time('x',0)
  axis()
end

# void smgl_box(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0);	gr->Title("Box (default)");	gr->Rotate(50,60);	gr->Box();
# 	gr->SubPlot(2,2,1);	gr->Title("colored");		gr->Rotate(50,60);	gr->Box("r");
# 	gr->SubPlot(2,2,2);	gr->Title("with faces");	gr->Rotate(50,60);	gr->Box("@");
# 	gr->SubPlot(2,2,3);	gr->Title("both");	gr->Rotate(50,60);	gr->Box("@cm");
# }
procs['box'] = proc do
  sub_plot(2,2,0)
  title("Box (default)")
  rotate(50,60)
  box()
  sub_plot(2,2,1)
  title("colored")
  rotate(50,60)
  box("r")
  sub_plot(2,2,2)
  title("with faces")
  rotate(50,60)
  box("@")
  sub_plot(2,2,3)
  title("both")
  rotate(50,60)
  box("@cm")
end

# void smgl_loglog(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0,"<_");	gr->Title("Semi-log axis");	gr->SetRanges(0.01,100,-1,1);	gr->SetFunc("lg(x)","");
# 	gr->Axis();	gr->Grid("xy","g");	gr->FPlot("sin(1/x)");	gr->Label('x',"x",0); gr->Label('y', "y = sin 1/x",0);
# 	gr->SubPlot(2,2,1,"<_");	gr->Title("Log-log axis");	gr->SetRanges(0.01,100,0.1,100);	gr->SetFunc("lg(x)","lg(y)");
# 	gr->Axis();	gr->FPlot("sqrt(1+x^2)");	gr->Label('x',"x",0); gr->Label('y', "y = \\sqrt{1+x^2}",0);
# 	gr->SubPlot(2,2,2,"<_");	gr->Title("Minus-log axis");	gr->SetRanges(-100,-0.01,-100,-0.1);	gr->SetFunc("-lg(-x)","-lg(-y)");
# 	gr->Axis();	gr->FPlot("-sqrt(1+x^2)");	gr->Label('x',"x",0); gr->Label('y', "y = -\\sqrt{1+x^2}",0);
# 	gr->SubPlot(2,2,3,"<_");	gr->Title("Log-ticks");	gr->SetRanges(0.1,100,0,100);	gr->SetFunc("sqrt(x)","");
# 	gr->Axis();	gr->FPlot("x");	gr->Label('x',"x",1); gr->Label('y', "y = x",0);
# }
procs['loglog'] = proc do
  sub_plot(2,2,0,"<_")
  title("Semi-log axis")
  set_ranges(0.01,100,-1,1)
  set_func("lg(x)","")
  axis()
  grid("xy","g")
  fplot("sin(1/x)")
  label('x',"x",0)
  label('y', "y = sin 1/x",0)
  sub_plot(2,2,1,"<_")
  title("Log-log axis")
  set_ranges(0.01,100,0.1,100)
  set_func("lg(x)","lg(y)")
  axis()
  fplot("sqrt(1+x^2)")
  label('x',"x",0)
  label('y', "y = \\sqrt{1+x^2}",0)
  sub_plot(2,2,2,"<_")
  title("Minus-log axis")
  set_ranges(-100,-0.01,-100,-0.1)
  set_func("-lg(-x)","-lg(-y)")
  axis()
  fplot("-sqrt(1+x^2)")
  label('x',"x",0)
  label('y', "y = -\\sqrt{1+x^2}",0)
  sub_plot(2,2,3,"<_")
  title("Log-ticks")
  set_ranges(0.1,100,0,100)
  set_func("sqrt(x)","")
  axis()
  fplot("x")
  label('x',"x",1)
  label('y', "y = x",0)
end

# void smgl_venn(mglGraph *gr)
# {
# 	double xx[3]={-0.3,0,0.3}, yy[3]={0.3,-0.3,0.3}, ee[3]={0.7,0.7,0.7};
# 	mglData x(3,xx), y(3,yy), e(3,ee);
# 	gr->SubPlot(1,1,0);	gr->Title("Venn-like diagram");	gr->Alpha(true);	gr->Error(x,y,e,e,"!rgb@#o");
# }
procs['venn'] = proc do
  xx = [-0.3,0,0.3]
  yy = [0.3,-0.3,0.3]
  ee = [0.7,0.7,0.7]
  x = MathGL::MglData.new(xx)
  y = MathGL::MglData.new(yy)
  e = MathGL::MglData.new(ee)
  sub_plot(1,1,0)
  title("Venn-like diagram")
  alpha(true)
  error(x,y,e,e,"!rgb@#o")
end

# void smgl_stereo(mglGraph *gr)
# {
# 	mglData a;	mgls_prepare2d(&a);
# 	gr->Light(true);
# 	gr->SubPlot(2,1,0);	gr->Rotate(50,60+1);
# 	gr->Box();	gr->Surf(a);
# 	gr->SubPlot(2,1,1);	gr->Rotate(50,60-1);
# 	gr->Box();	gr->Surf(a);
# }
procs['stereo'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  light(true)
  sub_plot(2,1,0)
  rotate(50,60+1)
  box()
  surf(a)
  sub_plot(2,1,1)
  rotate(50,60-1)
  box()
  surf(a)
end

# void smgl_hist(mglGraph *gr)
# {
# 	mglData x(10000), y(10000), z(10000);	gr->Fill(x,"2*rnd-1");	gr->Fill(y,"2*rnd-1");	gr->Fill(z,"exp(-6*(v^2+w^2))",x,y);
# 	mglData xx=gr->Hist(x,z), yy=gr->Hist(y,z);	xx.Norm(0,1);	yy.Norm(0,1);
# 	gr->MultiPlot(3,3,3,2,2,"");	gr->SetRanges(-1,1,-1,1,0,1);	gr->Box();	gr->Dots(x,y,z,"wyrRk");
# 	gr->MultiPlot(3,3,0,2,1,"");	gr->SetRanges(-1,1,0,1);	gr->Box();	gr->Bars(xx);
# 	gr->MultiPlot(3,3,5,1,2,"");	gr->SetRanges(0,1,-1,1);	gr->Box();	gr->Barh(yy);
# 	gr->SubPlot(3,3,2);		gr->Puts(mglPoint(0.5,0.5),"Hist and\nMultiPlot\nsample","a",-3);
# }
procs['hist'] = proc do
  x = MathGL::MglData.new(10000)
  y = MathGL::MglData.new(10000)
  z = MathGL::MglData.new(10000)
  fill(x,"2*rnd-1")
  fill(y,"2*rnd-1")
  fill(z,"exp(-6*(v^2+w^2))",x,y)
  xx = hist(x,z)
  yy = hist(y,z)
  xx.norm(0,1)
  yy.norm(0,1)
  multi_plot(3,3,3,2,2,"")
  set_ranges(-1,1,-1,1,0,1)
  box()
  dots(x,y,z,"wyrRk")
  multi_plot(3,3,0,2,1,"")
  set_ranges(-1,1,0,1)
  box()
  bars(xx)
  multi_plot(3,3,5,1,2,"")
  set_ranges(0,1,-1,1)
  box()
  barh(yy)
  sub_plot(3,3,2)
  puts([0.5,0.5],"Hist and\nMultiPlot\nsample","a",-3)
end

# void smgl_primitives(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0,"");	gr->Title("Line, Curve, Rhomb, Ellipse","",-1.5);
# 	gr->Line(mglPoint(-1,-1),mglPoint(-0.5,1),"qAI");
# 	gr->Curve(mglPoint(-0.6,-1),mglPoint(1,1),mglPoint(0,1),mglPoint(1,1),"rA");
# 	gr->Rhomb(mglPoint(0,0.4),mglPoint(1,0.9),0.2,"b#");
# 	gr->Rhomb(mglPoint(0,0),mglPoint(1,0.4),0.2,"cg@");
# 	gr->Ellipse(mglPoint(0,-0.5),mglPoint(1,-0.1),0.2,"u#");
# 	gr->Ellipse(mglPoint(0,-1),mglPoint(1,-0.6),0.2,"m@");
# 	gr->Mark(mglPoint(0,-0.5),"*");	gr->Mark(mglPoint(1,-0.1),"*");
#
# 	gr->Light(true);
# 	gr->SubPlot(2,2,1);	gr->Title("Face[xyz]");	gr->Rotate(50,60);	gr->Box();
# 	gr->FaceX(mglPoint(1,0,-1),1,1,"r");
# 	gr->FaceY(mglPoint(-1,-1,-1),1,1,"g");
# 	gr->FaceZ(mglPoint(1,-1,-1),-1,1,"b");
# 	gr->Face(mglPoint(-1,-1,1),mglPoint(-1,1,1),mglPoint(1,-1,0),mglPoint(1,1,1),"bmgr");
#
# 	gr->SubPlot(2,2,3,"");	gr->Title("Cone");
# 	gr->Cone(mglPoint(-0.7,-0.3),mglPoint(-0.7,0.7,0.5),0.2,0.1,"b");
# 	gr->Puts(mglPoint(-0.7,-0.7),"no edges\n(default)");
# 	gr->Cone(mglPoint(0,-0.3),mglPoint(0,0.7,0.5),0.2,0.1,"g@");
# 	gr->Puts(mglPoint(0,-0.7),"with edges\n('\\@' style)");
# 	gr->Cone(mglPoint(0.7,-0.3),mglPoint(0.7,0.7,0.5),0.2,0,"ry");
# 	gr->Puts(mglPoint(0.7,-0.7),"'arrow' with\ngradient");
#
# 	gr->SubPlot(2,2,2,"");	gr->Title("Sphere and Drop");	gr->Alpha(false);
# 	gr->Puts(mglPoint(-0.9,0.4),"sh=0");		gr->Ball(mglPoint(-0.9,0,1),'k');
# 	gr->Drop(mglPoint(-0.9,0),mglPoint(0,1),0.5,"r",0);
# 	gr->Puts(mglPoint(-0.3,0.6),"sh=0.33");	gr->Ball(mglPoint(-0.3,0,1),'k');
# 	gr->Drop(mglPoint(-0.3,0),mglPoint(0,1),0.5,"r",0.33);
# 	gr->Puts(mglPoint(0.3,0.8),"sh=0.67");		gr->Ball(mglPoint(0.3,0,1),'k');
# 	gr->Drop(mglPoint(0.3,0),mglPoint(0,1),0.5,"r",0.67);
# 	gr->Puts(mglPoint(0.9,1),"sh=1");			gr->Ball(mglPoint(0.9,0,1),'k');
# 	gr->Drop(mglPoint(0.9,0),mglPoint(0,1),0.5,"r",1);
# 	gr->Line(mglPoint(-0.9,0,1),mglPoint(0.9,0,1),"b");
#
# 	gr->Puts(mglPoint(-0.9,-1.1),"asp=0.33");
# 	gr->Drop(mglPoint(-0.9,-0.7),mglPoint(0,1),0.5,"b",0,0.33);
# 	gr->Puts(mglPoint(-0.3,-1.1),"asp=0.67");
# 	gr->Drop(mglPoint(-0.3,-0.7),mglPoint(0,1),0.5,"b",0,0.67);
# 	gr->Puts(mglPoint(0.3,-1.1),"asp=1");
# 	gr->Drop(mglPoint(0.3,-0.7),mglPoint(0,1),0.5,"b",0,1);
# 	gr->Puts(mglPoint(0.9,-1.1),"asp=1.5");
# 	gr->Drop(mglPoint(0.9,-0.7),mglPoint(0,1),0.5,"b",0,1.5);
# }
procs['primitives'] = proc do
  sub_plot(2,2,0,"")
  title("Line, Curve, Rhomb, Ellipse","",-1.5)
  line([-1,-1],[-0.5,1],"qAI")
  curve([-0.6,-1],[1,1],[0,1],[1,1],"rA")
  rhomb([0,0.4],[1,0.9],0.2,"b#")
  rhomb([0,0],[1,0.4],0.2,"cg@")
  ellipse([0,-0.5],[1,-0.1],0.2,"u#")
  ellipse([0,-1],[1,-0.6],0.2,"m@")
  mark([0,-0.5],"*")
  mark([1,-0.1],"*")
  light(true)
  sub_plot(2,2,1)
  title("Face[xyz]")
  rotate(50,60)
  box()
  face_x([1,0,-1],1,1,"r")
  face_y([-1,-1,-1],1,1,"g")
  face_z([1,-1,-1],-1,1,"b")
  face([-1,-1,1],[-1,1,1],[1,-1,0],[1,1,1],"bmgr")
  sub_plot(2,2,3,"")
  title("Cone")
  cone([-0.7,-0.3],[-0.7,0.7,0.5],0.2,0.1,"b")
  puts([-0.7,-0.7],"no edges\n(default)")
  cone([0,-0.3],[0,0.7,0.5],0.2,0.1,"g@")
  puts([0,-0.7],"with edges\n('\\@' style)")
  cone([0.7,-0.3],[0.7,0.7,0.5],0.2,0,"ry")
  puts([0.7,-0.7],"'arrow' with\ngradient")
  sub_plot(2,2,2,"")
  title("Sphere and Drop")
  alpha(false)
  puts([-0.9,0.4],"sh=0")
  ball([-0.9,0,1],'k')
  drop([-0.9,0],[0,1],0.5,"r",0)
  puts([-0.3,0.6],"sh=0.33")
  ball([-0.3,0,1],'k')
  drop([-0.3,0],[0,1],0.5,"r",0.33)
  puts([0.3,0.8],"sh=0.67")
  ball([0.3,0,1],'k')
  drop([0.3,0],[0,1],0.5,"r",0.67)
  puts([0.9,1],"sh=1")
  ball([0.9,0,1],'k')
  drop([0.9,0],[0,1],0.5,"r",1)
  line([-0.9,0,1],[0.9,0,1],"b")
  puts([-0.9,-1.1],"asp=0.33")
  drop([-0.9,-0.7],[0,1],0.5,"b",0,0.33)
  puts([-0.3,-1.1],"asp=0.67")
  drop([-0.3,-0.7],[0,1],0.5,"b",0,0.67)
  puts([0.3,-1.1],"asp=1")
  drop([0.3,-0.7],[0,1],0.5,"b",0,1)
  puts([0.9,-1.1],"asp=1.5")
  drop([0.9,-0.7],[0,1],0.5,"b",0,1.5)
end

# void smgl_table(mglGraph *gr)
# {
# 	mglData ys(10,3);	ys.Modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd");
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Table plot");	}
# 	gr->Table(ys,"y_1\ny_2\ny_3");	gr->Box();
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("no borders, colored");
# 	gr->Table(ys,"y_1\ny_2\ny_3","r|");
# 	gr->SubPlot(2,2,2);	gr->Title("no font decrease");
# 	gr->Table(ys,"y_1\ny_2\ny_3","#");
# 	gr->SubPlot(2,2,3);	gr->Title("manual width, position");
# 	gr->Table(0.5, 0.95, ys,"y_1\ny_2\ny_3","#", "value 0.7");	gr->Box();
# }
procs['table'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  if !$mini
    sub_plot(2,2,0)
    title("Table plot")
  end
  table(ys,"y_1\ny_2\ny_3")
  box()
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("no borders, colored")
  table(ys,"y_1\ny_2\ny_3","r|")
  sub_plot(2,2,2)
  title("no font decrease")
  table(ys,"y_1\ny_2\ny_3","#")
  sub_plot(2,2,3)
  title("manual width, position")
  table(0.5, 0.95, ys,"y_1\ny_2\ny_3","#", "value 0.7")
  box()
end

# void smgl_label(mglGraph *gr)
# {
# 	mglData ys(10);	ys.Modify("0.8*sin(pi*2*x)+0.2*rnd");
# 	if(!mini)	{	gr->SubPlot(1,1,0,"");	gr->Title("Label plot");	}
# 	gr->Box();	gr->Plot(ys," *");	gr->Label(ys,"y=%y");
# }
procs['label'] = proc do
  ys = MathGL::MglData.new(10)
  ys.modify("0.8*sin(pi*2*x)+0.2*rnd")
  if !$mini
    sub_plot(1,1,0,"")
    title("Label plot")
  end
  box()
  plot(ys," *")
  label(ys,"y=%y")
end

# void smgl_colorbar(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0);	gr->Title("Colorbar out of box");	gr->Box();
# 	gr->Colorbar("<");	gr->Colorbar(">");	gr->Colorbar("_");	gr->Colorbar("^");
# 	gr->SubPlot(2,2,1);	gr->Title("Colorbar near box");		gr->Box();
# 	gr->Colorbar("<I");	gr->Colorbar(">I");	gr->Colorbar("_I");	gr->Colorbar("^I");
# 	gr->SubPlot(2,2,2);	gr->Title("manual colors");
# 	mglData a,v;	mgls_prepare2d(&a,0,&v);
# 	gr->Box();	gr->ContD(v,a);
# 	gr->Colorbar(v,"<");	gr->Colorbar(v,">");	gr->Colorbar(v,"_");	gr->Colorbar(v,"^");
#
# 	gr->SubPlot(2,2,3);	gr->Title(" ");
# 	gr->Puts(mglPoint(-0.5,1.55),"Color positions",":C",-2);
# 	gr->Colorbar("bwr>",0.25,0);	gr->Puts(mglPoint(-0.9,1.2),"Default");
# 	gr->Colorbar("b{w,0.3}r>",0.5,0);	gr->Puts(mglPoint(-0.1,1.2),"Manual");
#
# 	gr->Puts(mglPoint(1,1.55),"log-scale",":C",-2);
# 	gr->SetRange('c',0.01,1e3);
# 	gr->Colorbar(">",0.75,0);	gr->Puts(mglPoint(0.65,1.2),"Normal scale");
# 	gr->SetFunc("","","","lg(c)");
# 	gr->Colorbar(">");		gr->Puts(mglPoint(1.35,1.2),"Log scale");
# }
procs['colorbar'] = proc do
  sub_plot(2,2,0)
  title("Colorbar out of box")
  box()
  colorbar("<")
  colorbar(">")
  colorbar("_")
  colorbar("^")
  sub_plot(2,2,1)
  title("Colorbar near box")
  box()
  colorbar("<I")
  colorbar(">I")
  colorbar("_I")
  colorbar("^I")
  sub_plot(2,2,2)
  title("manual colors")
  a = MathGL::MglData.new
  v = MathGL::MglData.new
  mgls_prepare2d(a,nil,v)
  box()
  cont_d(v,a)
  colorbar(v,"<")
  colorbar(v,">")
  colorbar(v,"_")
  colorbar(v,"^")
  sub_plot(2,2,3)
  title(" ")
  puts([-0.5,1.55],"Color positions",":C",-2)
  colorbar("bwr>",0.25,0)
  puts([-0.9,1.2],"Default")
  colorbar("b{w,0.3}r>",0.5,0)
  puts([-0.1,1.2],"Manual")
  puts([1,1.55],"log-scale",":C",-2)
  set_range('c',0.01,1e3)
  colorbar(">",0.75,0)
  puts([0.65,1.2],"Normal scale")
  set_func("","","","lg(c)")
  colorbar(">")
  puts([1.35,1.2],"Log scale")
end

# void smgl_legend(mglGraph *gr)
# {
# 	gr->AddLegend("sin(\\pi {x^2})","b");
# 	gr->AddLegend("sin(\\pi x)","g*");
# 	gr->AddLegend("sin(\\pi \\sqrt{x})","rd");
# 	gr->AddLegend("just text"," ");
# 	gr->AddLegend("no indent for this","");
# 	if(!mini)	{gr->SubPlot(2,2,0,"");	gr->Title("Legend (default)");}
# 	gr->Box();	gr->Legend();
# 	if(mini)	return;
# 	gr->Legend(3,"A#");
# 	gr->Puts(mglPoint(0.75,0.65),"Absolute position","A");
# 	gr->SubPlot(2,2,2,"");	gr->Title("coloring");	gr->Box();
# 	gr->Legend(0,"r#");	gr->Legend(1,"Wb#");	gr->Legend(2,"ygr#");
# 	gr->SubPlot(2,2,3,"");	gr->Title("manual position");	gr->Box();
# 	gr->Legend(0.5,1);
# 	gr->Puts(mglPoint(0.5,0.55),"at x=0.5, y=1","a");
# 	gr->Legend(1,"#-");
# 	gr->Puts(mglPoint(0.75,0.25),"Horizontal legend","a");
# }
procs['legend'] = proc do
  add_legend("sin(\\pi {x^2})","b")
  add_legend("sin(\\pi x)","g*")
  add_legend("sin(\\pi \\sqrt{x})","rd")
  add_legend("just text"," ")
  add_legend("no indent for this","")
  if !$mini
    sub_plot(2,2,0,"")
    title("Legend (default)")
  end
  box()
  legend()
  if $mini
    return
  end
  legend(3,"A#")
  puts([0.75,0.65],"Absolute position","A")
  sub_plot(2,2,2,"")
  title("coloring")
  box()
  legend(0,"r#")
  legend(1,"Wb#")
  legend(2,"ygr#")
  sub_plot(2,2,3,"")
  title("manual position")
  box()
  legend(0.5,1)
  puts([0.5,0.55],"at x=0.5, y=1","a")
  legend(1,"#-")
  puts([0.75,0.25],"Horizontal legend","a")
end

# void smgl_dat_diff(mglGraph *gr)
# {
# 	gr->SetRanges(0,1,0,1,0,1);
# 	mglData a(30,40);	a.Modify("x*y");
# 	gr->SubPlot(2,2,0);	gr->Title("a(x,y)");	gr->Rotate(60,40);
# 	gr->Surf(a);		gr->Box();
# 	gr->SubPlot(2,2,1);	gr->Title("da/dx");		gr->Rotate(60,40);
# 	a.Diff("x");		gr->Surf(a);	gr->Box();
# 	gr->SubPlot(2,2,2);	gr->Title("\\int da/dx dxdy");	gr->Rotate(60,40);
# 	a.Integral("xy");	gr->Surf(a);	gr->Box();
# 	gr->SubPlot(2,2,3);	gr->Title("\\int {d^2}a/dxdy dx");	gr->Rotate(60,40);
# 	a.Diff2("y");	gr->Surf(a);	gr->Box();
# }
procs['dat_diff'] = proc do
  set_ranges(0,1,0,1,0,1)
  a = MathGL::MglData.new(30,40)
  a.modify("x*y")
  sub_plot(2,2,0)
  title("a(x,y)")
  rotate(60,40)
  surf(a)
  box()
  sub_plot(2,2,1)
  title("da/dx")
  rotate(60,40)
  a.diff("x")
  surf(a)
  box()
  sub_plot(2,2,2)
  title("\\int da/dx dxdy")
  rotate(60,40)
  a.integral("xy")
  surf(a)
  box()
  sub_plot(2,2,3)
  title("\\int {d^2}a/dxdy dx")
  rotate(60,40)
  a.diff2("y")
  surf(a)
  box()
end

# void smgl_dat_extra(mglGraph *gr)
# {
# 	gr->SubPlot(2,2,0,"");	gr->Title("Envelop sample");
# 	mglData d1(1000);	gr->Fill(d1,"exp(-8*x^2)*sin(10*pi*x)");
# 	gr->Axis();			gr->Plot(d1, "b");
# 	d1.Envelop('x');	gr->Plot(d1, "r");
#
# 	gr->SubPlot(2,2,1,"");	gr->Title("Smooth sample");
# 	mglData y0(30),y1,y2,y3;
# 	gr->SetRanges(0,1,0,1);
# 	gr->Fill(y0, "0.4*sin(pi*x) + 0.3*cos(1.5*pi*x) - 0.4*sin(2*pi*x)+0.5*rnd");
#
# 	y1=y0;	y1.Smooth("x3");
# 	y2=y0;	y2.Smooth("x5");
# 	y3=y0;	y3.Smooth("x");
#
# 	gr->Plot(y0,"{m7}:s", "legend 'none'");
# 	gr->Plot(y1,"r", "legend ''3' style'");
# 	gr->Plot(y2,"g", "legend ''5' style'");
# 	gr->Plot(y3,"b", "legend 'default'");
# 	gr->Legend();		gr->Box();
#
# 	gr->SubPlot(2,2,2);		gr->Title("Sew sample");
# 	mglData d2(100, 100);	gr->Fill(d2, "mod((y^2-(1-x)^2)/2,0.1)");
# 	gr->Rotate(50, 60);	gr->Light(true);	gr->Alpha(true);
# 	gr->Box();			gr->Surf(d2, "b");
# 	d2.Sew("xy", 0.1);	gr->Surf(d2, "r");
#
# 	gr->SubPlot(2,2,3);		gr->Title("Resize sample (interpolation)");
# 	mglData x0(10), v0(10), x1, v1;
# 	gr->Fill(x0,"rnd");		gr->Fill(v0,"rnd");
# 	x1 = x0.Resize(100);	v1 = v0.Resize(100);
# 	gr->Plot(x0,v0,"b+ ");	gr->Plot(x1,v1,"r-");
# 	gr->Label(x0,v0,"%n");
# }
procs['dat_extra'] = proc do
  sub_plot(2,2,0,"")
  title("Envelop sample")
  d1 = MathGL::MglData.new(1000)
  fill(d1,"exp(-8*x^2)*sin(10*pi*x)")
  axis()
  plot(d1, "b")
  d1.envelop('x')
  plot(d1, "r")
  sub_plot(2,2,1,"")
  title("Smooth sample")
  y0 = MathGL::MglData.new(30)
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  y3 = MathGL::MglData.new
  set_ranges(0,1,0,1)
  fill(y0, "0.4*sin(pi*x) + 0.3*cos(1.5*pi*x) - 0.4*sin(2*pi*x)+0.5*rnd")
  y1=y0
  y1.smooth("x3")
  y2=y0
  y2.smooth("x5")
  y3=y0
  y3.smooth("x")
  plot(y0,"{m7}:s", "legend 'none'")
  plot(y1,"r", "legend ''3' style'")
  plot(y2,"g", "legend ''5' style'")
  plot(y3,"b", "legend 'default'")
  legend()
  box()
  sub_plot(2,2,2)
  title("Sew sample")
  d2 = MathGL::MglData.new(100, 100)
  fill(d2, "mod((y^2-(1-x)^2)/2,0.1)")
  rotate(50, 60)
  light(true)
  alpha(true)
  box()
  surf(d2, "b")
  d2.sew("xy", 0.1)
  surf(d2, "r")
  sub_plot(2,2,3)
  title("Resize sample (interpolation)")
  x0 = MathGL::MglData.new(10)
  v0 = MathGL::MglData.new(10)
  x1 = MathGL::MglData.new
  v1 = MathGL::MglData.new
  fill(x0,"rnd")
  fill(v0,"rnd")
  x1 = x0.resize(100)
  v1 = v0.resize(100)
  plot(x0,v0,"b+ ")
  plot(x1,v1,"r-")
  label(x0,v0,"%n")
end

# void smgl_ternary(mglGraph *gr)
# {
# 	gr->SetRanges(0,1,0,1,0,1);
# 	mglData x(50),y(50),z(50),rx(10),ry(10), a(20,30);
# 	a.Modify("30*x*y*(1-x-y)^2*(x+y<1)");
# 	x.Modify("0.25*(1+cos(2*pi*x))");
# 	y.Modify("0.25*(1+sin(2*pi*x))");
# 	rx.Modify("rnd"); ry.Modify("(1-v)*rnd",rx);
# 	z.Modify("x");
#
# 	gr->SubPlot(2,2,0);	gr->Title("Ordinary axis 3D");
# 	gr->Rotate(50,60);		gr->Light(true);
# 	gr->Plot(x,y,z,"r2");	gr->Surf(a,"BbcyrR#");
# 	gr->Axis(); gr->Grid();	gr->Box();
# 	gr->Label('x',"B",1);	gr->Label('y',"C",1);	gr->Label('z',"Z",1);
#
# 	gr->SubPlot(2,2,1);	gr->Title("Ternary axis (x+y+t=1)");
# 	gr->Ternary(1);
# 	gr->Plot(x,y,"r2");	gr->Plot(rx,ry,"q^ ");	gr->Cont(a);
# 	gr->Line(mglPoint(0.5,0), mglPoint(0,0.75), "g2");
# 	gr->Axis(); gr->Grid("xyz","B;");
# 	gr->Label('x',"B");	gr->Label('y',"C");	gr->Label('t',"A");
#
# 	gr->SubPlot(2,2,2);	gr->Title("Quaternary axis 3D");
# 	gr->Rotate(50,60);		gr->Light(true);
# 	gr->Ternary(2);
# 	gr->Plot(x,y,z,"r2");	gr->Surf(a,"BbcyrR#");
# 	gr->Axis(); gr->Grid();	gr->Box();
# 	gr->Label('t',"A",1);	gr->Label('x',"B",1);
# 	gr->Label('y',"C",1);	gr->Label('z',"D",1);
#
# 	gr->SubPlot(2,2,3);	gr->Title("Ternary axis 3D");
# 	gr->Rotate(50,60);		gr->Light(true);
# 	gr->Ternary(1);
# 	gr->Plot(x,y,z,"r2");	gr->Surf(a,"BbcyrR#");
# 	gr->Axis(); gr->Grid();	gr->Box();
# 	gr->Label('t',"A",1);	gr->Label('x',"B",1);
# 	gr->Label('y',"C",1);	gr->Label('z',"Z",1);
# }
procs['ternary'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  sub_plot(2,2,0)
  title("Ordinary axis 3D")
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"BbcyrR#")
  axis()
  grid()
  box()
  label('x',"B",1)
  label('y',"C",1)
  label('z',"Z",1)
  sub_plot(2,2,1)
  title("Ternary axis (x+y+t=1)")
  ternary(1)
  plot(x,y,"r2")
  plot(rx,ry,"q^ ")
  cont(a)
  line([0.5,0], [0,0.75], "g2")
  axis()
  grid("xyz","B;")
  label('x',"B")
  label('y',"C")
  label('t',"A")
  sub_plot(2,2,2)
  title("Quaternary axis 3D")
  rotate(50,60)
  light(true)
  ternary(2)
  plot(x,y,z,"r2")
  surf(a,"BbcyrR#")
  axis()
  grid()
  box()
  label('t',"A",1)
  label('x',"B",1)
  label('y',"C",1)
  label('z',"D",1)
  sub_plot(2,2,3)
  title("Ternary axis 3D")
  rotate(50,60)
  light(true)
  ternary(1)
  plot(x,y,z,"r2")
  surf(a,"BbcyrR#")
  axis()
  grid()
  box()
  label('t',"A",1)
  label('x',"B",1)
  label('y',"C",1)
  label('z',"Z",1)
end

# void smgl_projection(mglGraph *gr)
# {
# 	gr->SetRanges(0,1,0,1,0,1);
# 	mglData x(50),y(50),z(50),rx(10),ry(10), a(20,30);
# 	a.Modify("30*x*y*(1-x-y)^2*(x+y<1)");
# 	x.Modify("0.25*(1+cos(2*pi*x))");
# 	y.Modify("0.25*(1+sin(2*pi*x))");
# 	rx.Modify("rnd"); ry.Modify("(1-v)*rnd",rx);
# 	z.Modify("x");
#
# 	if(!mini)	gr->Title("Projection sample");
# 	gr->Ternary(4);
# 	gr->Rotate(50,60);		gr->Light(true);
# 	gr->Plot(x,y,z,"r2");	gr->Surf(a,"#");
# 	gr->Axis(); gr->Grid();	gr->Box();
# 	gr->Label('x',"X",1);	gr->Label('y',"Y",1);	gr->Label('z',"Z",1);
# }
procs['projection'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  if !$mini
    title("Projection sample")
  end
  ternary(4)
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"#")
  axis()
  grid()
  box()
  label('x',"X",1)
  label('y',"Y",1)
  label('z',"Z",1)
end

# void smgl_projection5(mglGraph *gr)
# {
# 	gr->SetRanges(0,1,0,1,0,1);
# 	mglData x(50),y(50),z(50),rx(10),ry(10), a(20,30);
# 	a.Modify("30*x*y*(1-x-y)^2*(x+y<1)");
# 	x.Modify("0.25*(1+cos(2*pi*x))");
# 	y.Modify("0.25*(1+sin(2*pi*x))");
# 	rx.Modify("rnd"); ry.Modify("(1-v)*rnd",rx);
# 	z.Modify("x");
#
# 	if(!mini)	gr->Title("Projection sample (ternary)");
# 	gr->Ternary(5);
# 	gr->Rotate(50,60);		gr->Light(true);
# 	gr->Plot(x,y,z,"r2");	gr->Surf(a,"#");
# 	gr->Axis(); gr->Grid();	gr->Box();
# 	gr->Label('x',"X",1);	gr->Label('y',"Y",1);	gr->Label('z',"Z",1);
# }
procs['projection5'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  if !$mini
    title("Projection sample (ternary)")
  end
  ternary(5)
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"#")
  axis()
  grid()
  box()
  label('x',"X",1)
  label('y',"Y",1)
  label('z',"Z",1)
end

# void smgl_triplot(mglGraph *gr)
# {
# 	double q[] = {0,1,2,3, 4,5,6,7, 0,2,4,6, 1,3,5,7, 0,4,1,5, 2,6,3,7};
# 	double xc[] = {-1,1,-1,1,-1,1,-1,1}, yc[] = {-1,-1,1,1,-1,-1,1,1}, zc[] = {-1,-1,-1,-1,1,1,1,1};
# 	mglData qq(6,4,q), xx(8,xc), yy(8,yc), zz(8,zc);
# 	gr->Light(true);
# 	gr->SubPlot(2,2,0);	gr->Title("QuadPlot sample");	gr->Rotate(50,60);
# 	gr->QuadPlot(qq,xx,yy,zz,"yr");
# 	gr->QuadPlot(qq,xx,yy,zz,"k#");
# 	gr->SubPlot(2,2,2);	gr->Title("QuadPlot coloring");	gr->Rotate(50,60);
# 	gr->QuadPlot(qq,xx,yy,zz,yy,"yr");
# 	gr->QuadPlot(qq,xx,yy,zz,"k#");
#
# 	double t[] = {0,1,2, 0,1,3, 0,2,3, 1,2,3};
# 	double xt[] = {-1,1,0,0}, yt[] = {-1,-1,1,0}, zt[] = {-1,-1,-1,1};
# 	mglData tt(4,3,t), uu(4,xt), vv(4,yt), ww(4,zt);
# 	gr->SubPlot(2,2,1);	gr->Title("TriPlot sample");	gr->Rotate(50,60);
# 	gr->TriPlot(tt,uu,vv,ww,"b");
# 	gr->TriPlot(tt,uu,vv,ww,"k#");
# 	gr->SubPlot(2,2,3);	gr->Title("TriPlot coloring");	gr->Rotate(50,60);
# 	gr->TriPlot(tt,uu,vv,ww,vv,"cb");
# 	gr->TriPlot(tt,uu,vv,ww,"k#");
# 	gr->TriCont(tt,uu,vv,ww,"B");
# }
procs['triplot'] = proc do
  q = [0,1,2,3, 4,5,6,7, 0,2,4,6, 1,3,5,7, 0,4,1,5, 2,6,3,7]
  xc = [-1,1,-1,1,-1,1,-1,1]
  yc = [-1,-1,1,1,-1,-1,1,1]
  zc = [-1,-1,-1,-1,1,1,1,1]
  qq = MathGL::MglData.new(q,6,4)
  xx = MathGL::MglData.new(xc)
  yy = MathGL::MglData.new(yc)
  zz = MathGL::MglData.new(zc)
  light(true)
  sub_plot(2,2,0)
  title("QuadPlot sample")
  rotate(50,60)
  quad_plot(qq,xx,yy,zz,"yr")
  quad_plot(qq,xx,yy,zz,"k#")
  sub_plot(2,2,2)
  title("QuadPlot coloring")
  rotate(50,60)
  quad_plot(qq,xx,yy,zz,yy,"yr")
  quad_plot(qq,xx,yy,zz,"k#")
  t = [0,1,2, 0,1,3, 0,2,3, 1,2,3]
  xt = [-1,1,0,0]
  yt = [-1,-1,1,0]
  zt = [-1,-1,-1,1]
  tt = MathGL::MglData.new(t,4,3)
  uu = MathGL::MglData.new(xt)
  vv = MathGL::MglData.new(yt)
  ww = MathGL::MglData.new(zt)
  sub_plot(2,2,1)
  title("TriPlot sample")
  rotate(50,60)
  tri_plot(tt,uu,vv,ww,"b")
  tri_plot(tt,uu,vv,ww,"k#")
  sub_plot(2,2,3)
  title("TriPlot coloring")
  rotate(50,60)
  tri_plot(tt,uu,vv,ww,vv,"cb")
  tri_plot(tt,uu,vv,ww,"k#")
  tri_cont(tt,uu,vv,ww,"B")
end

# void smgl_dots(mglGraph *gr)
# {
# 	int i, n=1000;
# 	mglData x(n),y(n),z(n);
# 	for(i=0;i<n;i++)
# 	{
# 		double t=M_PI*(mgl_rnd()-0.5), f=2*M_PI*mgl_rnd();
# 		x.a[i] = 0.9*cos(t)*cos(f);
# 		y.a[i] = 0.9*cos(t)*sin(f);
# 		z.a[i] = 0.6*sin(t);
# 	}
# 	if(!mini)	gr->Title("Dots sample");
# 	gr->Rotate(50,60);	gr->Box();	gr->Dots(x,y,z);
# }
procs['dots'] = proc do
  n = 1000
  x = MathGL::MglData.new(n)
  y = MathGL::MglData.new(n)
  z = MathGL::MglData.new(n)
  for i in 0...n
    t = M_PI*(mgl_rnd()-0.5)
    f = 2*M_PI*mgl_rnd()
    x.set_val(0.9*Math.cos(t)*Math.cos(f),i)
    y.set_val(0.9*Math.cos(t)*Math.sin(f),i)
    z.set_val(0.6*Math.sin(t),i)
  end
  if !$mini
    title("Dots sample")
  end
  rotate(50,60)
  box()
  dots(x,y,z)
end

# void smgl_mirror(mglGraph *gr)
# {
# 	mglData a(31,41);
# 	gr->Fill(a,"-pi*x*exp(-(y+1)^2-4*x^2)");
#
# 	if(!mini)	{	gr->SubPlot(2,2,0);	gr->Title("Options for coordinates");	}
# 	gr->Alpha(true);	gr->Light(true);
# 	gr->Rotate(40,60);	gr->Box();
# 	gr->Surf(a,"r","yrange 0 1"); gr->Surf(a,"b","yrange 0 -1");
# 	if(mini)	return;
# 	gr->SubPlot(2,2,1);	gr->Title("Option 'meshnum'");
# 	gr->Rotate(40,60);	gr->Box();
# 	gr->Mesh(a,"r","yrange 0 1"); gr->Mesh(a,"b","yrange 0 -1; meshnum 5");
# 	gr->SubPlot(2,2,2);	gr->Title("Option 'alpha'");
# 	gr->Rotate(40,60);	gr->Box();
# 	gr->Surf(a,"r","yrange 0 1; alpha 0.7"); gr->Surf(a,"b","yrange 0 -1; alpha 0.3");
# 	gr->SubPlot(2,2,3,"<_");	gr->Title("Option 'legend'");
# 	gr->FPlot("x^3","r","legend 'y = x^3'"); gr->FPlot("cos(pi*x)","b","legend 'y = cos \\pi x'");
# 	gr->Box();	gr->Axis();	gr->Legend(2,"");
# }
procs['mirror'] = proc do
  a = MathGL::MglData.new(31,41)
  fill(a,"-pi*x*exp(-(y+1)^2-4*x^2)")
  if !$mini
    sub_plot(2,2,0)
    title("Options for coordinates")
  end
  alpha(true)
  light(true)
  rotate(40,60)
  box()
  surf(a,"r","yrange 0 1")
  surf(a,"b","yrange 0 -1")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("Option 'meshnum'")
  rotate(40,60)
  box()
  mesh(a,"r","yrange 0 1")
  mesh(a,"b","yrange 0 -1; meshnum 5")
  sub_plot(2,2,2)
  title("Option 'alpha'")
  rotate(40,60)
  box()
  surf(a,"r","yrange 0 1; alpha 0.7")
  surf(a,"b","yrange 0 -1; alpha 0.3")
  sub_plot(2,2,3,"<_")
  title("Option 'legend'")
  fplot("x^3","r","legend 'y = x^3'")
  fplot("cos(pi*x)","b","legend 'y = cos \\pi x'")
  box()
  axis()
  legend(2,"")
end


kind = 'png'
gr = MathGL::MglGraph.new
procs.each do |key,blk|
  file = 'smpl_'+key+'.'+kind
  if !File.exist?(file)
    puts key
    gr.set_size(960,720)
    gr.vertex_color(false)
    gr.compression(false)
    gr.default_plot_param()
    gr.clf
    gr.instance_eval(&blk)
    case kind
    when 'eps'
      gr.write_eps(file)
    when 'png'
      gr.write_png(file,'',false)
    end
  end
end
