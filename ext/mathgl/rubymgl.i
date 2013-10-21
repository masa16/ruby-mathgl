%include "typemaps.i"
%include "wchar.i"

//-- mglPoint --
%{
static mglPoint GetMglPoint(VALUE arg)
{
    if (TYPE(arg)==T_ARRAY) {
        mreal v[4] = {0,0,0,0};
        long len = RARRAY_LEN(arg);
        if (len < 1 || len > 4) {
            rb_raise(rb_eArgError, "wrong size array");
        }
        for (long i=0; i<len; i++) {
            VALUE x = rb_ary_entry(arg, i);
            v[i] = NUM2DBL(x);
        }
        return mglPoint(v[0],v[1],v[2],v[3]);
    } else {
        void *vptr = 0;
        SWIG_ConvertPtr(arg, &vptr, SWIGTYPE_p_mglPoint, 1);
        return *reinterpret_cast< mglPoint * >(vptr);
    }
}
%}

%typemap(typecheck, precedence=SWIG_TYPECHECK_DOUBLE_ARRAY)
  mglPoint
{
    $1 = (TYPE($input)==T_ARRAY);
    if (!($1)) {
        void *vptr = 0;
        int res = SWIG_ConvertPtr($input, &vptr, SWIGTYPE_p_mglPoint, 0);
        $1 = SWIG_CheckState(res);
    }
}

%typemap(in) mglPoint {
    $1 = GetMglPoint($input);
}


//-- mglData --
%{
static mglData *GetMglData(VALUE arg)
{
    if (TYPE(arg)==T_ARRAY) {
        long len = RARRAY_LEN(arg);
        mglData *d = new mglData(len);
        for (long i=0; i<len; i++) {
            VALUE x = rb_ary_entry(arg, i);
            d->SetVal(NUM2DBL(x), i);
        }
        return d;
    } else {
        void *vptr = 0;
        SWIG_ConvertPtr(arg, &vptr, SWIGTYPE_p_mglData, 1);
        mglData *src = reinterpret_cast< mglData * >(vptr);
        mglData *link = new mglData;
        link->Link(*src);
        return link;
    }
}
%}

%typemap(typecheck, precedence=SWIG_TYPECHECK_DOUBLE_ARRAY)
  mglData&, mglDataA&
{
    $1 = (TYPE($input)==T_ARRAY);
    if (!($1)) {
        void *vptr = 0;
        int res = SWIG_ConvertPtr($input, &vptr, $1_descriptor, 0);
        $1 = SWIG_CheckState(res);
    }
}

%typemap(in) mglData&, mglDataA& {
    $1 = GetMglData($input);
}

%typemap(freearg) mglData&, mglDataA& {
    delete $1;
}

%extend mglData {
  mglData(const double *d, int size, int rows, int cols)
  {
      if (size != rows*cols) {
          rb_raise(rb_eArgError,"array size(%d) mismatches (rows=%d)*(cols=%d)",
                   size, rows, cols);
      }
      return new mglData(d, rows, cols);
  }

  void Set(const double *A, long size)
  {   $self->Set(A, size);  }

  void Set(const double *A, long size, long NX, long NY)
  {
      if (size != NX*NY) {
          rb_raise(rb_eArgError,"array size(%ld) mismatches NX(%ld)*NY(%ld)",
                   size, NX, NY);
      }
      $self->Set(A, NX, NY);
  }

  void Set(const double *A, long size, long NX, long NY, long NZ)
  {
      if (size != NX*NY*NZ) {
          rb_raise(rb_eArgError,"array size(%ld) mismatches (NX=%ld)*(NY=%ld)*(NZ=%ld)",
                   size, NX, NY, NZ);
      }
      $self->Set(A, NX, NY, NZ);
  }

  inline mglData operator*(const mglDataA &d)
  {       mglData a(self);  a*=d;   return a;       }
  inline mglData operator*(double b)
  {       mglData a(self);  a*=b;   return a;       }
  inline mglData operator-(const mglDataA &d)
  {       mglData a(self);  a-=d;   return a;       }
  inline mglData operator-(double b)
  {       mglData a(self);  a-=b;   return a;       }
  inline mglData operator+(const mglDataA &d)
  {       mglData a(self);  a+=d;   return a;       }
  inline mglData operator+(double b)
  {       mglData a(self);  a+=b;   return a;       }
  inline mglData operator/(const mglDataA &d)
  {       mglData a(self);  a/=d;   return a;       }
  inline mglData operator/(double b)
  {       mglData a(self);  a/=b;   return a;       }

}

%apply (double* INPUT, int) {(const double* d, int size)};
%apply (double* INPUT, long) {(const double *A, long size)};

%typemap(typecheck, precedence=SWIG_TYPECHECK_DOUBLE_ARRAY)
  (const double* d, int size), (const double *A, long size)
{
    $1 = (TYPE($input)==T_ARRAY);
}

// Get a list of double
%typemap(in)
  (const double* d, int size), (const double *A, long size)
{
    if (TYPE($input)!=T_ARRAY) {
        rb_raise(rb_eArgError,"argument is not Array");
    }
    //Check_Type($input, T_ARRAY);
    $2 = RARRAY_LEN($input);
    $1 = ALLOC_N(double,$2);
    for (long i=0; i<$2; i++) {
        $1[i] = NUM2DBL(RARRAY_PTR($input)[i]);
    }
}

// Free the list
%typemap(freearg) (const double* d, int size), (const double *A, long size)
{
    xfree($1);
}

%extend mglGraph {
  inline void SetFunc(const char *EqX, int EqY=0, int EqZ=0, int EqA=0)
  { self->SetFunc(EqX, 0, 0, 0); }
  inline void SetFunc(const char *EqX, const char *EqY, int EqZ=0, int EqA=0)
  { self->SetFunc(EqX, EqY, 0, 0); }
  inline void SetFunc(const char *EqX, const char *EqY, const char *EqZ=NULL, int EqA=0)
  { self->SetFunc(EqX, EqY, EqZ, 0); }
}
