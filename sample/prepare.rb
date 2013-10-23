def mgl_rnd
  rand
end

def pow(a,b)
  a**b
end

M_PI = Math::PI
NULL = nil
NAN  = 0.0/0.0

# void mgls_prepare1d(mglData *y, mglData *y1, mglData *y2, mglData *x1, mglData *x2)
# {
# 	register long i,n=50;
# 	if(y)	y->Create(n,3);
# 	if(x1)	x1->Create(n);		if(x2)	x2->Create(n);
# 	if(y1)	y1->Create(n);		if(y2)	y2->Create(n);
# 	double xx;
# 	for(i=0;i<n;i++)
# 	{
# 		xx = i/(n-1.);
# 		if(y)
# 		{
# 			y->a[i] = 0.7*sin(2*M_PI*xx) + 0.5*cos(3*M_PI*xx) + 0.2*sin(M_PI*xx);
# 			y->a[i+n] = sin(2*M_PI*xx);
# 			y->a[i+2*n] = cos(2*M_PI*xx);
# 		}
# 		if(y1)	y1->a[i] = 0.5+0.3*cos(2*M_PI*xx);
# 		if(y2)	y2->a[i] = 0.3*sin(2*M_PI*xx);
# 		if(x1)	x1->a[i] = xx*2-1;
# 		if(x2)	x2->a[i] = 0.05+0.03*cos(2*M_PI*xx);
# 	}
# }
def mgls_prepare1d(y=nil,y1=nil,y2=nil,x1=nil,x2=nil)
  n = 50
  if y
    y.create(n,3)
  end
  if x1
    x1.create(n)
  end
  if x2
    x2.create(n)
  end
  if y1
    y1.create(n)
  end
  if y2
    y2.create(n)
  end
  for i in 0...n
    xx = i/(n-1.0)
    if y
      y.set_val(0.7*Math.sin(2*M_PI*xx) + 0.5*Math.cos(3*M_PI*xx) + 0.2*Math.sin(M_PI*xx),i,0)
      y.set_val(Math.sin(2*M_PI*xx),i,1)
      y.set_val(Math.cos(2*M_PI*xx),i,2)
    end
    if y1
      y1.set_val(0.5+0.3*Math.cos(2*M_PI*xx),i)
    end
    if y2
      y2.set_val(0.3*Math.sin(2*M_PI*xx),i)
    end
    if x1
      x1.set_val(xx*2-1,i)
    end
    if x2
      x2.set_val(0.05+0.03*Math.cos(2*M_PI*xx),i)
    end
  end
end

# void mgls_prepare2d(mglData *a, mglData *b, mglData *v)
# {
# 	register long i,j,n=50,m=40,i0;
# 	if(a)	a->Create(n,m);		if(b)	b->Create(n,m);
# 	if(v)	{	v->Create(9);	v->Fill(-1,1);	}
# 	double x,y;
# 	for(i=0;i<n;i++)	for(j=0;j<m;j++)
# 	{
# 		x = i/(n-1.);	y = j/(m-1.);	i0 = i+n*j;
# 		if(a)	a->a[i0] = 0.6*sin(2*M_PI*x)*sin(3*M_PI*y)+0.4*cos(3*M_PI*x*y);
# 		if(b)	b->a[i0] = 0.6*cos(2*M_PI*x)*cos(3*M_PI*y)+0.4*cos(3*M_PI*x*y);
# 	}
# }
def mgls_prepare2d(a=nil,b=nil,v=nil)
  n = 50
  m = 40
  if a
    a.create(n,m)
  end
  if b
    b.create(n,m)
  end
  if v
    v.create(9)
    v.fill(-1,1)
  end
  for i in 0...n
  for j in 0...m
    x = i/(n-1.0)
    y = j/(m-1.0)
    i0 = i+n*j
    if a
      a.set_val(0.6*Math.sin(2*M_PI*x)*Math.sin(3*M_PI*y)+0.4*Math.cos(3*M_PI*x*y),i,j)
    end
    if b
      b.set_val(0.6*Math.cos(2*M_PI*x)*Math.cos(3*M_PI*y)+0.4*Math.cos(3*M_PI*x*y),i,j)
    end
  end
  end
end

# void mgls_prepare3d(mglData *a, mglData *b)
# {
# 	register long i,j,k,n=61,m=50,l=40,i0;
# 	if(a)	a->Create(n,m,l);		if(b)	b->Create(n,m,l);
# 	double x,y,z;
# 	for(i=0;i<n;i++)	for(j=0;j<m;j++)	for(k=0;k<l;k++)
# 	{
# 		x=2*i/(n-1.)-1;	y=2*j/(m-1.)-1;	z=2*k/(l-1.)-1;	i0 = i+n*(j+m*k);
# 		if(a)	a->a[i0] = -2*(x*x + y*y + z*z*z*z - z*z - 0.1);
# 		if(b)	b->a[i0] = 1-2*tanh((x+y)*(x+y));
# 	}
# }
def mgls_prepare3d(a=nil,b=nil)
  n = 61
  m = 50
  l = 40
  if a
    a.create(n,m,l)
  end
  if b
    b.create(n,m,l)
  end
  for i in 0...n
  for j in 0...m
  for k in 0...l
    x=2*i/(n-1.0)-1
    y=2*j/(m-1.0)-1
    z=2*k/(l-1.0)-1
    i0 = i+n*(j+m*k)
    if a
      a.set_val(-2*(x*x + y*y + z*z*z*z - z*z - 0.1),i,j,k)
    end
    if b
      b.set_val(1-2*Math.tanh((x+y)*(x+y)),i,j,k)
    end
  end
  end
  end
end

# void mgls_prepare2v(mglData *a, mglData *b)
# {
# 	register long i,j,n=20,m=30,i0;
# 	if(a)	a->Create(n,m);		if(b)	b->Create(n,m);
# 	double x,y;
# 	for(i=0;i<n;i++)	for(j=0;j<m;j++)
# 	{
# 		x=i/(n-1.);	y=j/(m-1.);	i0 = i+n*j;
# 		if(a)	a->a[i0] = 0.6*sin(2*M_PI*x)*sin(3*M_PI*y)+0.4*cos(3*M_PI*x*y);
# 		if(b)	b->a[i0] = 0.6*cos(2*M_PI*x)*cos(3*M_PI*y)+0.4*cos(3*M_PI*x*y);
# 	}
# }
def mgls_prepare2v(a=nil,b=nil)
  n = 20
  m = 30
  if a
    a.create(n,m)
  end
  if b
    b.create(n,m)
  end
  for i in 0...n
  for j in 0...m
    x=i/(n-1.0)
    y=j/(m-1.0)
    i0 = i+n*j
    if a
      a.set_val(0.6*Math.sin(2*M_PI*x)*Math.sin(3*M_PI*y)+0.4*Math.cos(3*M_PI*x*y),i,j)
    end
    if b
      b.set_val(0.6*Math.cos(2*M_PI*x)*Math.cos(3*M_PI*y)+0.4*Math.cos(3*M_PI*x*y),i,j)
    end
  end
  end
end

# void mgls_prepare3v(mglData *ex, mglData *ey, mglData *ez)
# {
# 	register long i,j,k,n=10,i0;
# 	if(!ex || !ey || !ez)	return;
# 	ex->Create(n,n,n);	ey->Create(n,n,n);	ez->Create(n,n,n);
# 	double x,y,z, r1,r2;
# 	for(i=0;i<n;i++)	for(j=0;j<n;j++)	for(k=0;k<n;k++)
# 	{
# 		x=2*i/(n-1.)-1;	y=2*j/(n-1.)-1;	z=2*k/(n-1.)-1;	i0 = i+n*(j+k*n);
# /* 		r1 = 1./(x*x+y*y+z*z+0.01);	r2=exp(-0.01/r1/r1)*r1;
#  		ex->a[i0]=z*y*r2*r2;
#  		ey->a[i0]=x*y*r2*r2+1;
#  		ez->a[i0]=y*x*r2*r2;*/
# /*		ex->a[i0]=3*z;
# 		ey->a[i0]=1;
# 		ez->a[i0]=-3*x;*/
# 		r1 = pow(x*x+y*y+(z-0.3)*(z-0.3)+0.03,1.5);
# 		r2 = pow(x*x+y*y+(z+0.3)*(z+0.3)+0.03,1.5);
# 		ex->a[i0]=0.2*x/r1 - 0.2*x/r2;
# 		ey->a[i0]=0.2*y/r1 - 0.2*y/r2;
# 		ez->a[i0]=0.2*(z-0.3)/r1 - 0.2*(z+0.3)/r2;
# 	}
# }
def mgls_prepare3v(ex=nil,ey=nil,ez=nil)
  n = 10
  if !ex || !ey || !ez
    return
  end
  ex.create(n,n,n)
  ey.create(n,n,n)
  ez.create(n,n,n)
  for i in 0...n
  for j in 0...n
  for k in 0...n
    x=2*i/(n-1.0)-1
    y=2*j/(n-1.0)-1
    z=2*k/(n-1.0)-1
    i0 = i+n*(j+k*n)
    r1 = pow(x*x+y*y+(z-0.3)*(z-0.3)+0.03,1.5)
    r2 = pow(x*x+y*y+(z+0.3)*(z+0.3)+0.03,1.5)
    ex.set_val(0.2*x/r1 - 0.2*x/r2,i,j,k)
    ey.set_val(0.2*y/r1 - 0.2*y/r2,i,j,k)
    ez.set_val(0.2*(z-0.3)/r1 - 0.2*(z+0.3)/r2,i,j,k)
  end
  end
  end
end
