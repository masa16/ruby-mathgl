# This document is converted from data_en.texi.
class MglDataC

# Public variables.
# Gets or sets the value in by "flat" index i without border checking. Index i should be in range [0, nx*ny*nz-1].
# @overload get_val(i)
#  @param [long] i 
#  @return [Float]
# @overload get_val(i)
#  @param [long] i 
#  @return [Float]
# @overload set_val(val,i)
#  @param [Float] val 
#  @param [long] i 
#  @return [nil]
# @overload set_val(val,i)
#  @param [Float] val 
#  @param [long] i 
#  @return [nil]
def set_val
end


# Public variables.
# Gets the x-, y-, z-size of the data.
# @overload get_nx()
#  @return [long]
# @overload get_nx()
#  @return [long]
# @overload get_ny()
#  @return [long]
# @overload get_ny()
#  @return [long]
# @overload get_nz()
#  @return [long]
# @overload get_nz()
#  @return [long]
def get_nz
end


# Data constructor.
# Default constructor. Allocates the memory for data array and initializes it by zero. If string eq is specified then data will be filled by corresponding formula as in fill.
# @overload initialize(mx=1,my=1,mz=1)
#  @param [Integer] mx default=1
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @return [MglData]
# @overload initialize(mx=1,my=1,mz=1)
#  @param [Integer] mx default=1
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @return [MglDataC]
def initialize
end


# Data constructor.
# Copy constructor. Allocates the memory for data array and copy values from other array. At this, if parameter eq is specified then the data will be modified by corresponding formula similarly to fill.
# @overload initialize(dat2)
#  @param [MglData] dat2 
#  @return [MglData]
# @overload initialize(dat2)
#  @param [MglData] dat2 
#  @return [MglData]
# @overload initialize(size,dat2)
#  @param [Integer] size 
#  @param [float] dat2 
#  @return [MglData]
# @overload initialize(size,cols,dat2)
#  @param [Integer] size 
#  @param [Integer] cols 
#  @param [float] dat2 
#  @return [MglData]
# @overload initialize(size,dat2)
#  @param [Integer] size 
#  @param [Float] dat2 
#  @return [MglData]
# @overload initialize(size,cols,dat2)
#  @param [Integer] size 
#  @param [Integer] cols 
#  @param [Float] dat2 
#  @return [MglData]
# @overload initialize(dat2,size)
#  @param [Float] dat2 
#  @param [Integer] size 
#  @return [MglData]
# @overload initialize(dat2,size,cols)
#  @param [Float] dat2 
#  @param [Integer] size 
#  @param [Integer] cols 
#  @return [MglData]
# @overload initialize(dat2)
#  @param [MglData] dat2 
#  @return [MglDataC]
# @overload initialize(dat2)
#  @param [MglData] dat2 
#  @return [MglDataC]
# @overload initialize(size,dat2)
#  @param [Integer] size 
#  @param [float] dat2 
#  @return [MglDataC]
# @overload initialize(size,cols,dat2)
#  @param [Integer] size 
#  @param [Integer] cols 
#  @param [float] dat2 
#  @return [MglDataC]
# @overload initialize(size,dat2)
#  @param [Integer] size 
#  @param [Float] dat2 
#  @return [MglDataC]
# @overload initialize(size,cols,dat2)
#  @param [Integer] size 
#  @param [Integer] cols 
#  @param [Float] dat2 
#  @return [MglDataC]
# @overload initialize(size,dat2)
#  @param [Integer] size 
#  @param [dual] dat2 
#  @return [MglDataC]
# @overload initialize(size,cols,dat2)
#  @param [Integer] size 
#  @param [Integer] cols 
#  @param [dual] dat2 
#  @return [MglDataC]
def initialize
end


# Data constructor.
# Reads data from tab-separated text file with auto determining sizes of the data.
# @overload initialize(fname)
#  @param [String] fname 
#  @return [MglData]
# @overload initialize(fname)
#  @param [String] fname 
#  @return [MglDataC]
def initialize
end


# Data resizing.
# Creates or recreates the array with specified size and fills it by zero. This function does nothing if one of parameters mx, my, mz is zero or negative.
# @overload create(mx,my=1,mz=1)
#  @param [Integer] mx 
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @return [nil]
# @overload create(mx,my=1,mz=1)
#  @param [Integer] mx 
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @return [nil]
def create
end


# Data resizing.
# Rearrange dimensions without changing data array so that resulting sizes should  be mx*my*mz < nx*ny*nz. If some of parameter my or mz are zero then it will be selected to optimal fill of data array. For example, if my=0 then it will be change to my=nx*ny*nz/mx and mz=1.
# @overload rearrange(mx,my=0,mz=0)
#  @param [Integer] mx 
#  @param [Integer] my default=0
#  @param [Integer] mz default=0
#  @return [nil]
# @overload rearrange(mx,my=0,mz=0)
#  @param [Integer] mx 
#  @param [Integer] my default=0
#  @param [Integer] mz default=0
#  @return [nil]
def rearrange
end


# Data resizing.
# Transposes (shift order of) dimensions of the data. New order of dimensions is specified in string dim. This function can be useful also after reading of one-dimensional data.
# @overload transpose(dim="yx")
#  @param [String] dim default="yx"
#  @return [nil]
# @overload transpose(dim="yx")
#  @param [String] dim default="yx"
#  @return [nil]
def transpose
end


# Data resizing.
# Increase the dimensions of the data by inserting new (|n1|+1)-th slices after (for n1>0) or before (for n1<0) of existed one. It is possible to insert 2 dimensions simultaneously for 1d data by using parameter n2. Data to new slices is copy from existed one. For example, for n1>0 new array will be
# @overload extend(n1,n2=0)
#  @param [Integer] n1 
#  @param [Integer] n2 default=0
#  @return [nil]
# @overload extend(n1,n2=0)
#  @param [Integer] n1 
#  @param [Integer] n2 default=0
#  @return [nil]
def extend
end


# Data resizing.
# Reduces the data size by excluding data elements which indexes are not divisible by rx, ry, rz correspondingly. Parameter smooth set to use smoothing
# @overload squeeze(rx,ry=1,rz=1,smooth=false)
#  @param [Integer] rx 
#  @param [Integer] ry default=1
#  @param [Integer] rz default=1
#  @param [bool] smooth default=false
#  @return [nil]
# @overload squeeze(rx,ry=1,rz=1,smooth=false)
#  @param [Integer] rx 
#  @param [Integer] ry default=1
#  @param [Integer] rz default=1
#  @param [bool] smooth default=false
#  @return [nil]
def squeeze
end


# Data resizing.
# Cuts off edges of the data i<n1 and i>n2 if n2>0 or i>n[xyz]-n2 if n2<=0 along direction dir.
# @overload crop(n1,n2,dir='x')
#  @param [Integer] n1 
#  @param [Integer] n2 
#  @param [String] dir default='x'
#  @return [nil]
# @overload crop(n1,n2,dir='x')
#  @param [Integer] n1 
#  @param [Integer] n2 
#  @param [String] dir default='x'
#  @return [nil]
def crop
end


# Data resizing.
# Insert num slices along dir-direction at position pos and fill it by zeros.
# @overload insert(dir,pos=0,num=1)
#  @param [String] dir 
#  @param [Integer] pos default=0
#  @param [Integer] num default=1
#  @return [nil]
# @overload insert(dir,pos=0,num=1)
#  @param [String] dir 
#  @param [Integer] pos default=0
#  @param [Integer] num default=1
#  @return [nil]
def insert
end


# Data resizing.
# Delete num slices along dir-direction at position pos.
# @overload delete(dir,pos=0,num=1)
#  @param [String] dir 
#  @param [Integer] pos default=0
#  @param [Integer] num default=1
#  @return [nil]
# @overload delete(dir,pos=0,num=1)
#  @param [String] dir 
#  @param [Integer] pos default=0
#  @param [Integer] num default=1
#  @return [nil]
def delete
end


# Data resizing.
# Join data cells from vdat to dat. At this, function increase dat sizes according following: z-size for 3D data arrays arrays with equal x-,y-sizes; or y-size for 2D data arrays with equal x-sizes; or x-size otherwise.
# @overload join(vdat)
#  @param [MglData] vdat 
#  @return [nil]
# @overload join(vdat)
#  @param [MglData] vdat 
#  @return [nil]
def join
end


# Data filling.
# Allocates memory and copies the data from the  float* or double* array.
# @overload set(a,nx,ny=1,nz=1)
#  @param [float] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
# @overload set(a,nx,ny=1,nz=1)
#  @param [Float] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
# @overload set(a,nx,ny=1,nz=1)
#  @param [float] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
# @overload set(a,nx,ny=1,nz=1)
#  @param [Float] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
# @overload set(a,nx,ny=1,nz=1)
#  @param [dual] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
def set
end


# Data filling.
# Allocates memory and copies the data from the gsl_vector * structure.
# @overload set(v)
#  @param [gsl_vector] v 
#  @return [nil]
# @overload set(v)
#  @param [gsl_vector] v 
#  @return [nil]
def set
end


# Data filling.
# Allocates memory and copies the data from the gsl_matrix * structure.
# @overload set(m)
#  @param [gsl_matrix] m 
#  @return [nil]
# @overload set(m)
#  @param [gsl_matrix] m 
#  @return [nil]
def set
end


# Data filling.
# Copies the data from mglData (or mglDataA) instance from.
# @overload set(from)
#  @param [MglData] from 
#  @return [nil]
# @overload set(from)
#  @param [MglData] from 
#  @return [nil]
def set
end


# Data filling.
# Copies the data from mglData instances for real and imaginary parts of complex data arrays.
# @overload set(re,im)
#  @param [MglData] re 
#  @param [MglData] im 
#  @return [nil]
def set
end


# Data filling.
# Allocates memory and copies the data from the std::vector<T> array.
# @overload set(d)
#  @param [std::vector<int>] d 
#  @return [nil]
# @overload set(d)
#  @param [std::vector<int>] d 
#  @return [nil]
# @overload set(d)
#  @param [std::vector<float>] d 
#  @return [nil]
# @overload set(d)
#  @param [std::vector<float>] d 
#  @return [nil]
# @overload set(d)
#  @param [std::vector<double>] d 
#  @return [nil]
# @overload set(d)
#  @param [std::vector<double>] d 
#  @return [nil]
# @overload set(d)
#  @param [std::vector<dual>] d 
#  @return [nil]
def set
end


# Data filling.
# Allocates memory and scanf the data from the string.
# @overload set(str,nx,ny=1,nz=1)
#  @param [String] str 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
# @overload set(str,nx,ny=1,nz=1)
#  @param [String] str 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
def set
end


# Data filling.
# Links external data array, i.e. don't delete this array at exit.
# @overload link(from)
#  @param [MglData] from 
#  @return [nil]
# @overload link(a,nx,ny=1,nz=1)
#  @param [Float] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
# @overload link(from)
#  @param [MglData] from 
#  @return [nil]
# @overload link(a,nx,ny=1,nz=1)
#  @param [dual] a 
#  @param [Integer] nx 
#  @param [Integer] ny default=1
#  @param [Integer] nz default=1
#  @return [nil]
def link
end


# Data filling.
# Equidistantly fills the data values to range [v1, v2] in direction dir=(,,).
# @overload fill(v1,v2,dir='x')
#  @param [Float] v1 
#  @param [Float] v2 
#  @param [String] dir default='x'
#  @return [nil]
# @overload fill(v1,v2,dir='x')
#  @param [dual] v1 
#  @param [dual] v2 
#  @param [String] dir default='x'
#  @return [nil]
def fill
end


# Data filling.
# The same as previous ones but coordinates , ,  are supposed to be normalized in range [0,1]. If dim>0 is specified then modification will be fulfilled only for slices >=dim.
# @overload modify(eq,dim=0)
#  @param [String] eq 
#  @param [Integer] dim default=0
#  @return [nil]
# @overload modify(eq,v)
#  @param [String] eq 
#  @param [MglData] v 
#  @return [nil]
# @overload modify(eq,v,w)
#  @param [String] eq 
#  @param [MglData] v 
#  @param [MglData] w 
#  @return [nil]
# @overload modify(eq,dim=0)
#  @param [String] eq 
#  @param [Integer] dim default=0
#  @return [nil]
# @overload modify(eq,v)
#  @param [String] eq 
#  @param [MglData] v 
#  @return [nil]
# @overload modify(eq,v,w)
#  @param [String] eq 
#  @param [MglData] v 
#  @param [MglData] w 
#  @return [nil]
def modify
end


# File I/O.
# Reads data from tab-separated text file with auto determining sizes of the data. Double newline means the beginning of new z-slice.
# @overload read(fname)
#  @param [String] fname 
#  @return [bool]
# @overload read(fname)
#  @param [String] fname 
#  @return [bool]
def read
end


# File I/O.
# Reads data from text file with specified data sizes. This function does nothing if one of parameters mx, my or mz is zero or negative.
# @overload read(fname,mx,my=1,mz=1)
#  @param [String] fname 
#  @param [Integer] mx 
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @return [bool]
# @overload read(fname,mx,my=1,mz=1)
#  @param [String] fname 
#  @param [Integer] mx 
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @return [bool]
def read
end


# File I/O.
# Read data from text file with size specified at beginning of the file by first dim numbers. At this, variable dim set data dimensions.
# @overload read_mat(fname,dim=2)
#  @param [String] fname 
#  @param [Integer] dim default=2
#  @return [bool]
# @overload read_mat(fname,dim=2)
#  @param [String] fname 
#  @param [Integer] dim default=2
#  @return [bool]
def read_mat
end


# File I/O.
# Join data arrays from several text files. The file names are determined by function call sprintf(fname,templ,val);, where val changes from from to to with step step. The data load one-by-one in the same slice if as_slice=false or as slice-by-slice if as_slice=true.
# @overload read_range(templ,from,to,step=1,as_slice=false)
#  @param [String] templ 
#  @param [Float] from 
#  @param [Float] to 
#  @param [Float] step default=1
#  @param [bool] as_slice default=false
#  @return [nil]
# @overload read_range(templ,from,to,step=1,as_slice=false)
#  @param [String] templ 
#  @param [Float] from 
#  @param [Float] to 
#  @param [Float] step default=1
#  @param [bool] as_slice default=false
#  @return [nil]
def read_range
end


# File I/O.
# Join data arrays from several text files which filenames satisfied the template templ (for example, templ="t_*.dat"). The data load one-by-one in the same slice if as_slice=false or as slice-by-slice if as_slice=true.
# @overload read_all(templ,as_slice=false)
#  @param [String] templ 
#  @param [bool] as_slice default=false
#  @return [nil]
# @overload read_all(templ,as_slice=false)
#  @param [String] templ 
#  @param [bool] as_slice default=false
#  @return [nil]
def read_all
end


# File I/O.
# Saves the whole data array (for ns=-1) or only ns-th slice to text file.
# @overload save(fname,ns=-1)
#  @param [String] fname 
#  @param [Integer] ns default=-1
#  @return [nil]
# @overload save(fname,ns=-1)
#  @param [String] fname 
#  @param [Integer] ns default=-1
#  @return [nil]
def save
end


# File I/O.
# Reads data array named dname from HDF5 or HDF4 file. This function does nothing if HDF5|HDF4 was disabled during library compilation.
# @overload read_hdf(fname,dname)
#  @param [String] fname 
#  @param [String] dname 
#  @return [nil]
# @overload read_hdf(fname,dname)
#  @param [String] fname 
#  @param [String] dname 
#  @return [nil]
def read_hdf
end


# File I/O.
# Saves data array named dname to HDF5 file. This function does nothing if HDF5 was disabled during library compilation.
# @overload save_hdf(fname,dname,rewrite=false)
#  @param [String] fname 
#  @param [String] dname 
#  @param [bool] rewrite default=false
#  @return [nil]
# @overload save_hdf(fname,dname,rewrite=false)
#  @param [String] fname 
#  @param [String] dname 
#  @param [bool] rewrite default=false
#  @return [nil]
def save_hdf
end


# File I/O.
# Put data names from HDF5 file fname into buf as '\t' separated fields. In MGL version the list of data names will be printed as message. This function does nothing if HDF5 was disabled during library compilation.
# @overload datas_hdf(fname,buf,size)
#  @param [String] fname 
#  @param [String] buf 
#  @param [long] size 
#  @return [Integer]
# @overload datas_hdf(fname,buf,size)
#  @param [String] fname 
#  @param [String] buf 
#  @param [long] size 
#  @return [Integer]
def datas_hdf
end


# Make another data.
# Extracts sub-array data from the original data array keeping fixed positive index. For example SubData(-1,2) extracts 3d row (indexes are zero based), SubData(4,-1) extracts 5th column, SubData(-1,-1,3) extracts 4th slice and so on. If argument(s) are non-integer then linear interpolation between slices is used. In MGL version this command usually is used as inline one dat(xx,yy,zz).
# @overload sub_data(xx,yy=-1,zz=-1)
#  @param [Float] xx 
#  @param [Float] yy default=-1
#  @param [Float] zz default=-1
#  @return [MglData]
# @overload sub_data(xx,yy=-1,zz=-1)
#  @param [Float] xx 
#  @param [Float] yy default=-1
#  @param [Float] zz default=-1
#  @return [MglData]
def sub_data
end


# Make another data.
# Extracts sub-array data from the original data array for indexes specified by arrays xx, yy, zz (indirect access). This function work like previous one for 1D arguments or numbers, and resulting array dimensions are equal dimensions of 1D arrays for corresponding direction. For 2D and 3D arrays in arguments, the resulting array have the same dimensions as input arrays. The dimensions of all argument must be the same (or to be scalar 1*1*1) if they are 2D or 3D arrays. In MGL version this command usually is used as inline one dat(xx,yy,zz).
# @overload sub_data(xx,yy,zz)
#  @param [MglData] xx 
#  @param [MglData] yy 
#  @param [MglData] zz 
#  @return [MglData]
# @overload sub_data(xx,yy,zz)
#  @param [MglData] xx 
#  @param [MglData] yy 
#  @param [MglData] zz 
#  @return [MglData]
def sub_data
end


# Make another data.
# Get column (or slice) of the data filled by formula eq on column ids. For example, Column("n*w^2/exp(t)");. The column ids must be defined first by idset function or read from files. In MGL version this command usually is used as inline one dat('eq').
# @overload column(eq)
#  @param [String] eq 
#  @return [MglData]
# @overload column(eq)
#  @param [String] eq 
#  @return [MglData]
def column
end


# Make another data.
# Resizes the data to new size mx, my, mz from box (part) [x1,x2] x [y1,y2] x [z1,z2] of original array. Initially x,y,z coordinates are supposed to be in [0,1].
# @overload resize(mx,my=1,mz=1,x1=0,x2=1,y1=0,y2=1,z1=0,z2=1)
#  @param [Integer] mx 
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @param [Float] x1 default=0
#  @param [Float] x2 default=1
#  @param [Float] y1 default=0
#  @param [Float] y2 default=1
#  @param [Float] z1 default=0
#  @param [Float] z2 default=1
#  @return [MglData]
# @overload resize(mx,my=1,mz=1,x1=0,x2=1,y1=0,y2=1,z1=0,z2=1)
#  @param [Integer] mx 
#  @param [Integer] my default=1
#  @param [Integer] mz default=1
#  @param [Float] x1 default=0
#  @param [Float] x2 default=1
#  @param [Float] y1 default=0
#  @param [Float] y2 default=1
#  @param [Float] z1 default=0
#  @param [Float] z2 default=1
#  @return [MglData]
def resize
end


# Make another data.
# Gets array which values is result of interpolation of original array for coordinates from other arrays. All dimensions must be the same for data idat, jdat, kdat. Coordinates from idat, jdat, kdat are supposed to be normalized in range [0,1] (if norm=true) or in ranges [0,nx], [0,ny], [0,nz] correspondingly.
# @overload evaluate(idat,norm=true)
#  @param [MglData] idat 
#  @param [bool] norm default=true
#  @return [MglData]
# @overload evaluate(idat,jdat,norm=true)
#  @param [MglData] idat 
#  @param [MglData] jdat 
#  @param [bool] norm default=true
#  @return [MglData]
# @overload evaluate(idat,jdat,kdat,norm=true)
#  @param [MglData] idat 
#  @param [MglData] jdat 
#  @param [MglData] kdat 
#  @param [bool] norm default=true
#  @return [MglData]
# @overload evaluate(idat,norm=true)
#  @param [MglData] idat 
#  @param [bool] norm default=true
#  @return [MglData]
# @overload evaluate(idat,jdat,norm=true)
#  @param [MglData] idat 
#  @param [MglData] jdat 
#  @param [bool] norm default=true
#  @return [MglData]
# @overload evaluate(idat,jdat,kdat,norm=true)
#  @param [MglData] idat 
#  @param [MglData] jdat 
#  @param [MglData] kdat 
#  @param [bool] norm default=true
#  @return [MglData]
def evaluate
end


# Make another data.
# Creates n-th points distribution of the data values in range [v1, v2]. Array w specifies weights of the data elements (by default is 1). Parameter nsub define the number of additional interpolated points (for smoothness of histogram). See also Data manipulation
# @overload hist(n,v1=0,v2=1,nsub=0)
#  @param [Integer] n 
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @param [Integer] nsub default=0
#  @return [MglData]
# @overload hist(w,n,v1=0,v2=1,nsub=0)
#  @param [MglData] w 
#  @param [Integer] n 
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @param [Integer] nsub default=0
#  @return [MglData]
# @overload hist(n,v1=0,v2=1,nsub=0)
#  @param [Integer] n 
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @param [Integer] nsub default=0
#  @return [MglData]
# @overload hist(w,n,v1=0,v2=1,nsub=0)
#  @param [MglData] w 
#  @param [Integer] n 
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @param [Integer] nsub default=0
#  @return [MglData]
def hist
end


# Make another data.
# Gets momentum (1d-array) of the data along direction dir. String how contain kind of momentum. The momentum is defined like as
# if dir= and so on. Coordinates , ,  are data indexes normalized in range [0,1].
# @overload momentum(dir,how)
#  @param [String] dir 
#  @param [String] how 
#  @return [MglData]
# @overload momentum(dir,how)
#  @param [String] dir 
#  @param [String] how 
#  @return [MglData]
def momentum
end


# Make another data.
# Gets array which is the result of summation in given direction or direction(s).
# @overload sum(dir)
#  @param [String] dir 
#  @return [MglData]
# @overload sum(dir)
#  @param [String] dir 
#  @return [MglData]
def sum
end


# Make another data.
# Gets array which is the maximal data values in given direction or direction(s).
# @overload max(dir)
#  @param [String] dir 
#  @return [MglData]
# @overload max(dir)
#  @param [String] dir 
#  @return [MglData]
def max
end


# Make another data.
# Gets array which is the maximal data values in given direction or direction(s).
# @overload min(dir)
#  @param [String] dir 
#  @return [MglData]
# @overload min(dir)
#  @param [String] dir 
#  @return [MglData]
def min
end


# Make another data.
# Returns direct multiplication of arrays (like, res[i,j] = this[i]*a[j] and so on).
# @overload combine(a)
#  @param [MglData] a 
#  @return [MglData]
# @overload combine(a)
#  @param [MglData] a 
#  @return [MglData]
def combine
end


# Make another data.
# Gets array of diagonal elements a[i,i] (for 2D case) or a[i,i,i] (for 3D case) where i=0...nx-1. Function return copy of itself for 1D case. Data array must have dimensions ny,nz >= nx or ny,nz = 1.
# @overload trace()
#  @return [MglData]
# @overload trace()
#  @return [MglData]
def trace
end


# Make another data.
# Gets array of real parts of the data.
# @overload real()
#  @return [MglData]
def real
end


# Make another data.
# Gets array of imaginary parts of the data.
# @overload imag()
#  @return [MglData]
def imag
end


# Make another data.
# Gets array of absolute values of the data.
# @overload abs()
#  @return [MglData]
def abs
end


# Make another data.
# Gets array of arguments of the data.
# @overload arg()
#  @return [MglData]
def arg
end


# Data changing.
# Cumulative summation of the data in given direction or directions.
# @overload cum_sum(dir)
#  @param [String] dir 
#  @return [nil]
# @overload cum_sum(dir)
#  @param [String] dir 
#  @return [nil]
def cum_sum
end


# Data changing.
# Integrates (like cumulative summation) the data in given direction or directions.
# @overload integral(dir)
#  @param [String] dir 
#  @return [nil]
# @overload integral(dir)
#  @param [String] dir 
#  @return [nil]
def integral
end


# Data changing.
# Differentiates the data in given direction or directions.
# @overload diff(dir)
#  @param [String] dir 
#  @return [nil]
# @overload diff(dir)
#  @param [String] dir 
#  @return [nil]
def diff
end


# Data changing.
# Double-differentiates (like Laplace operator) the data in given direction.
# @overload diff2(dir)
#  @param [String] dir 
#  @return [nil]
# @overload diff2(dir)
#  @param [String] dir 
#  @return [nil]
def diff2
end


# Data changing.
# Do Fourier transform of the data in given direction or directions. If dir contain  then inverse Fourier is used. The Fourier transform is  (see ).
# @overload fft(dir)
#  @param [String] dir 
#  @return [nil]
def fft
end


# Data changing.
# Do Hankel transform of the data in given direction or directions. The Hankel transform is  (see ).
# @overload hankel(dir)
#  @param [String] dir 
#  @return [nil]
# @overload hankel(dir)
#  @param [String] dir 
#  @return [nil]
def hankel
end


# Data changing.
# Swaps the left and right part of the data in given direction (useful for Fourier spectrum).
# @overload swap(dir)
#  @param [String] dir 
#  @return [nil]
# @overload swap(dir)
#  @param [String] dir 
#  @return [nil]
def swap
end


# Data changing.
# Rolls the data along direction dir. Resulting array will be out[i] = ini[(i+num)%nx] if dir='x'.
# @overload roll(dir,error)
#  @param [String] dir 
#  @param [unknown] error 
#  @return [nil]
# @overload roll(dir,error)
#  @param [String] dir 
#  @param [unknown] error 
#  @return [nil]
def roll
end


# Data changing.
# Mirror the left-to-right part of the data in given direction. Looks like change the value index i->n-i. Note, that the similar effect in graphics you can reach by using options (), for example, surf dat; xrange 1 -1.
# @overload mirror(dir)
#  @param [String] dir 
#  @return [nil]
# @overload mirror(dir)
#  @param [String] dir 
#  @return [nil]
def mirror
end


# Data changing.
# Smooths the data on specified direction or directions. String dirs specifies the dimensions which will be smoothed. It may contain characters:  for 1st dimension,  for 2nd dimension,  for 3d dimension. If string dir contain:  then does nothing,  -- linear averaging over 3 points,  -- linear averaging over 5 points. By default quadratic averaging over 5 points is used.
# @overload smooth(dir="xyz",delta=0)
#  @param [String] dir default="xyz"
#  @param [Float] delta default=0
#  @return [nil]
# @overload smooth(dir="xyz",delta=0)
#  @param [String] dir default="xyz"
#  @param [Float] delta default=0
#  @return [nil]
def smooth
end


# Interpolation.
# Interpolates data by linear function to the given point x in [0...nx-1], y in [0...ny-1], z in [0...nz-1].
# @overload linear(x,y=0,z=0)
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
# @overload linear(x,y=0,z=0)
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [dual]
def linear
end


# Interpolation.
# Interpolates data by linear function to the given point x, y, z which assumed to be normalized in range [0, 1].
# @overload linear1(x,y=0,z=0)
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
# @overload linear1(x,y=0,z=0)
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [dual]
def linear1
end


# Interpolation.
# Interpolates data by linear function to the given point x in [0...nx-1], y in [0...ny-1], z in [0...nz-1]. The values of derivatives at the point are saved in dif.
# @overload linear(dif,x,y=0,z=0)
#  @param [MglPoint] dif 
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
# @overload linear(dif,x,y=0,z=0)
#  @param [MglPoint] dif 
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [dual]
def linear
end


# Interpolation.
# Interpolates data by linear function to the given point x, y, z which assumed to be normalized in range [0, 1]. The values of derivatives at the point are saved in dif.
# @overload linear1(dif,x,y=0,z=0)
#  @param [MglPoint] dif 
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
# @overload linear1(dif,x,y=0,z=0)
#  @param [MglPoint] dif 
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [dual]
def linear1
end


# Data information.
# Gets or prints to file fp or as message (in MGL) information about the data (sizes, maximum/minimum, momentums and so on).
# @overload print_info()
#  @return [String]
# @overload print_info(fp)
#  @param [FILE] fp 
#  @return [nil]
# @overload print_info()
#  @return [String]
# @overload print_info(fp)
#  @param [FILE] fp 
#  @return [nil]
def print_info
end


# Data information.
# Gets the x-, y-, z-size of the data.
# @overload get_nx()
#  @return [long]
# @overload get_ny()
#  @return [long]
# @overload get_nz()
#  @return [long]
# @overload get_nx()
#  @return [long]
# @overload get_ny()
#  @return [long]
# @overload get_nz()
#  @return [long]
def get_nz
end


# Data information.
# Gets maximal value of the data.
# @overload maximal()
#  @return [Float]
# @overload maximal()
#  @return [Float]
def maximal
end


# Data information.
# Gets minimal value of the data.
# @overload minimal()
#  @return [Float]
# @overload minimal()
#  @return [Float]
def minimal
end


# Data information.
# Gets position of minimum to variables i, j, k and returns the minimal value.
# @overload minimal(i,j,k)
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [Float]
# @overload minimal(i,j,k)
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [Float]
def minimal
end


# Data information.
# Gets position of maximum to variables i, j, k and returns the maximal value.
# @overload maximal(i,j,k)
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [Float]
# @overload maximal(i,j,k)
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [Float]
def maximal
end


# Data information.
# Gets approximated (interpolated) position of minimum to variables x, y, z and returns the minimal value.
# @overload minimal(x,y,z)
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [Float]
# @overload minimal(x,y,z)
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [Float]
def minimal
end


# Data information.
# Gets approximated (interpolated) position of maximum to variables x, y, z and returns the maximal value.
# @overload maximal(x,y,z)
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [Float]
# @overload maximal(x,y,z)
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [Float]
def maximal
end


end # MglDataC

class MglData

# Data resizing.
# Sort data rows (or slices in 3D case) by values of specified column idx (or cell (idx,idy) for 3D case). Note, this function is not thread safe!
# @overload sort(idx,idy=-1)
#  @param [lond] idx 
#  @param [long] idy default=-1
#  @return [nil]
def sort
end


# Data resizing.
# Delete rows which values are equal to next row for given column idx.
# @overload clean(idx)
#  @param [lond] idx 
#  @return [nil]
def clean
end


# Data filling.
# Allocates memory and copies the data from the float** or double** array with dimensions N1, N2, i.e. from array defined as mreal a[N1][N2];.
# @overload set(a,n1,n2)
#  @param [float] a 
#  @param [Integer] n1 
#  @param [Integer] n2 
#  @return [nil]
# @overload set(a,n1,n2)
#  @param [Float] a 
#  @param [Integer] n1 
#  @param [Integer] n2 
#  @return [nil]
def set
end


# Data filling.
# Allocates memory and copies the data from the float*** or double*** array with dimensions N1, N2, N3, i.e. from array defined as mreal a[N1][N2][N3];.
# @overload set(a,n1,n2)
#  @param [float] a 
#  @param [Integer] n1 
#  @param [Integer] n2 
#  @return [nil]
# @overload set(a,n1,n2)
#  @param [Float] a 
#  @param [Integer] n1 
#  @param [Integer] n2 
#  @return [nil]
def set
end


# Data filling.
# Fills data by 'x' or 'k' samples for Hankel ('h') or Fourier ('f') transform.
# @overload fill_sample(how)
#  @param [String] how 
#  @return [nil]
# @overload mgl_data_fill_sample(a,how)
#  @param [HMDT] a 
#  @param [String] how 
#  @return [nil]
def mgl_data_fill_sample
end


# Data filling.
# Sets value(s) of array a[i, j, k] = val. Negative indexes i, j, k=-1 set the value val to whole range in corresponding direction(s). For example, Put(val,-1,0,-1); sets a[i,0,j]=val for i=0...(nx-1), j=0...(nz-1).
# @overload put(val,i=-1,j=-1,k=-1)
#  @param [Float] val 
#  @param [Integer] i default=-1
#  @param [Integer] j default=-1
#  @param [Integer] k default=-1
#  @return [nil]
# @overload mgl_data_put_val(a,val,i,j,k)
#  @param [HMDT] a 
#  @param [Float] val 
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [nil]
def mgl_data_put_val
end


# Data filling.
# Copies value(s) from array v to the range of original array. Negative indexes i, j, k=-1 set the range in corresponding direction(s). At this minor dimensions of array v should be large than corresponding dimensions of this array. For example, Put(v,-1,0,-1); sets a[i,0,j]=v.ny>nz ? v[i,j] : v[i], where i=0...(nx-1), j=0...(nz-1) and condition v.nx>=nx is true.
# @overload put(v,i=-1,j=-1,k=-1)
#  @param [MglData] v 
#  @param [Integer] i default=-1
#  @param [Integer] j default=-1
#  @param [Integer] k default=-1
#  @return [nil]
def put
end


# Data filling.
# Sets the symbol ids for data columns. The string should contain one symbol 'a'...'z' per column. These ids are used in column.
# @overload set_column_id(ids)
#  @param [String] ids 
#  @return [nil]
# @overload mgl_data_set_id(a,ids)
#  @param [HMDT] a 
#  @param [String] ids 
#  @return [nil]
# @overload set_column_id(ids)
#  @param [String] ids 
#  @return [nil]
# @overload mgl_datac_set_id(a,ids)
#  @param [HADT] a 
#  @param [String] ids 
#  @return [nil]
def mgl_datac_set_id
end


# File I/O.
# Reads data from bitmap file (now support only PNG format). The RGB values of bitmap pixels are transformed to mreal values in range [v1, v2] using color scheme scheme ().
# @overload import(fname,scheme,v1=0,v2=1)
#  @param [String] fname 
#  @param [String] scheme 
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @return [nil]
def import
end


# File I/O.
# Saves data matrix (or ns-th slice for 3d data) to bitmap file (now support only PNG format). The data values are transformed from range [v1, v2] to RGB pixels of bitmap using color scheme scheme (). If v1>=v2 then the values of v1, v2 are automatically determined as minimal and maximal value of the data array.
# @overload export(fname,scheme,v1=0,v2=0,ns=-1)
#  @param [String] fname 
#  @param [String] scheme 
#  @param [Float] v1 default=0
#  @param [Float] v2 default=0
#  @param [Integer] ns default=-1
#  @return [nil]
def export
end


# Make another data.
# Gets array which values is indexes (roots) along given direction dir, where interpolated values of data dat are equal to val. Output data will have the sizes of dat in directions transverse to dir. If data idat is provided then its values are used as starting points. This allows to find several branches by consequentive calls. Indexes are supposed to be normalized in range [0,1] (if norm=true) or in ranges [0,nx], [0,ny], [0,nz] correspondingly. 
# @overload solve(val,dir,norm=true)
#  @param [Float] val 
#  @param [String] dir 
#  @param [bool] norm default=true
#  @return [MglData]
# @overload solve(val,dir,idat,norm=true)
#  @param [Float] val 
#  @param [String] dir 
#  @param [MglData] idat 
#  @param [bool] norm default=true
#  @return [MglData]
def solve
end


# Make another data.
# Find roots of equation 'func'=0 for variable var with initial guess ini. Secant method is used for root finding.
# @overload roots(func,var)
#  @param [String] func 
#  @param [String] var 
#  @return [MglData]
def roots
end


# Data changing.
# Differentiates the data specified parametrically in direction x with y, z=constant. Parametrical differentiation uses the formula (for 2D case):  where  denotes usual differentiation along 1st and 2nd dimensions. The similar formula is used for 3D case. Note, that you may change the order of arguments -- for example, if you have 2D data a(i,j) which depend on coordinates (x(i,j), y(i,j)) then usual derivative along  will be Diff(x,y); and usual derivative along  will be Diff(y,x);.
# @overload diff(x,y)
#  @param [MglData] x 
#  @param [MglData] y 
#  @return [nil]
# @overload diff(x,y,z)
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @return [nil]
def diff
end


# Data changing.
# Do Sine transform of the data in given direction or directions. The Sine transform is  (see ).
# @overload sin_fft(dir)
#  @param [String] dir 
#  @return [nil]
def sin_fft
end


# Data changing.
# Do Cosine transform of the data in given direction or directions. The Cosine transform is  (see ).
# @overload cos_fft(dir)
#  @param [String] dir 
#  @return [nil]
def cos_fft
end


# Data changing.
# Remove value steps (like phase jumps after inverse trigonometric functions) with period da in given direction.
# @overload sew(dir,m_pi)
#  @param [String] dir 
#  @param [mreal da=2] m_pi 
#  @return [nil]
def sew
end


# Data changing.
# Find envelop for data values along direction dir.
# @overload envelop(dir='x')
#  @param [String] dir default='x'
#  @return [nil]
def envelop
end


# Data changing.
# Normalizes the data to range [v1,v2]. If flag sym=true then symmetrical interval [-max(|v1|,|v2|), max(|v1|,|v2|)] is used. Modification will be applied only for slices >=dim.
# @overload norm(v1=0,v2=1,sym=false,dim=0)
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @param [bool] sym default=false
#  @param [Integer] dim default=0
#  @return [nil]
def norm
end


# Data changing.
# Normalizes data slice-by-slice along direction dir the data in slices to range [v1,v2]. If flag sym=true then symmetrical interval [-max(|v1|,|v2|), max(|v1|,|v2|)] is used. If keep_en is set then maximal value of k-th slice will be limited by
# @overload norm_sl(v1=0,v2=1,dir='z',keep_en=true,sym=false)
#  @param [Float] v1 default=0
#  @param [Float] v2 default=1
#  @param [String] dir default='z'
#  @param [bool] keep_en default=true
#  @param [bool] sym default=false
#  @return [nil]
def norm_sl
end


# Interpolation.
# Interpolates data by cubic spline to the given point x in [0...nx-1], y in [0...ny-1], z in [0...nz-1].
# @overload spline(x,y=0,z=0)
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
def spline
end


# Interpolation.
# Interpolates data by cubic spline to the given point x, y, z which assumed to be normalized in range [0, 1].
# @overload spline1(x,y=0,z=0)
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
def spline1
end


# Interpolation.
# Interpolates data by cubic spline to the given point x in [0...nx-1], y in [0...ny-1], z in [0...nz-1]. The values of derivatives at the point are saved in dif.
# @overload spline(dif,x,y=0,z=0)
#  @param [MglPoint] dif 
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
def spline
end


# Interpolation.
# Interpolates data by cubic spline to the given point x, y, z which assumed to be normalized in range [0, 1]. The values of derivatives at the point are saved in dif.
# @overload spline1(dif,x,y=0,z=0)
#  @param [MglPoint] dif 
#  @param [Float] x 
#  @param [Float] y default=0
#  @param [Float] z default=0
#  @return [Float]
def spline1
end


# Data information.
# Gets zero-momentum (energy, ) and write first momentum (median, ), second momentum (width, ), third momentum (skewness, ) and fourth momentum (kurtosis, ) to variables. Here  is corresponding coordinate if dir is ,  or . Otherwise median is , width is  and so on.
# @overload momentum(dir,a,w)
#  @param [String] dir 
#  @param [Float] a 
#  @param [Float] w 
#  @return [Float]
# @overload momentum(dir,m,w,s,k)
#  @param [String] dir 
#  @param [Float] m 
#  @param [Float] w 
#  @param [Float] s 
#  @param [Float] k 
#  @return [Float]
def momentum
end


# Data information.
# Find position (after specified in i, j, k) of first nonzero value of formula cond. Function return the data value at found position.
# @overload find(cond,i,j,k)
#  @param [String] cond 
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [Float]
def find
end


# Data information.
# Find position (before specified in i, j, k) of last nonzero value of formula cond. Function return the data value at found position.
# @overload last(cond,i,j,k)
#  @param [String] cond 
#  @param [Integer] i 
#  @param [Integer] j 
#  @param [Integer] k 
#  @return [Float]
def last
end


# Data information.
# Return position of first in direction dir nonzero value of formula cond. The search is started from point (i,j,k).
# @overload find(cond,dir,i=0,j=0,k=0)
#  @param [String] cond 
#  @param [String] dir 
#  @param [Integer] i default=0
#  @param [Integer] j default=0
#  @param [Integer] k default=0
#  @return [Integer]
def find
end


# Data information.
# Determines if any nonzero value of formula in the data array.
# @overload find_any(cond)
#  @param [String] cond 
#  @return [bool]
def find_any
end


# Operators.
# Adds the other data or the number.
# @overload +(b)
#  @param [MglData] b 
#  @return [MglData]
# @overload +(b)
#  @param [Float] b 
#  @return [MglData]
def +
end


# Operators.
# Subtracts the other data or the number.
# @overload -(b)
#  @param [MglData] b 
#  @return [MglData]
# @overload -(b)
#  @param [Float] b 
#  @return [MglData]
def -
end


# Operators.
# Multiplies by the other data or the number.
# @overload *(b)
#  @param [MglData] b 
#  @return [MglData]
# @overload *(b)
#  @param [Float] b 
#  @return [MglData]
def *
end


# Operators.
# Divides by the other data or the number.
# @overload /(b)
#  @param [MglData] b 
#  @return [MglData]
# @overload /(b)
#  @param [Float] b 
#  @return [MglData]
def /
end


end # MglData

class MglExprC

# Evaluate expression.
# Evaluates the formula for 'x','r'=x, 'y','n'=y, 'z','t'=z, 'a','u'=u.
# @overload eval(x,y,z)
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [Float]
# @overload eval(x,y,z)
#  @param [dual] x 
#  @param [dual] y 
#  @param [dual] z 
#  @return [dual]
def eval
end


# Evaluate expression.
# Evaluates the formula for variables in array var[0,...,'z'-'a'].
# @overload eval(var)
#  @param [Float] var 
#  @return [Float]
# @overload eval(var)
#  @param [dual] var 
#  @return [dual]
def eval
end


end # MglExprC

class MglExpr

# Evaluate expression.
# Evaluates the formula derivation respect to dir for 'x','r'=x, 'y','n'=y, 'z','t'=z, 'a','u'=u.
# @overload diff(dir,x,y,z)
#  @param [String] dir 
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [Float]
def diff
end


# Evaluate expression.
# Evaluates the formula derivation respect to dir for variables in array var[0,...,'z'-'a'].
# @overload diff(dir,var)
#  @param [String] dir 
#  @param [Float] var 
#  @return [Float]
def diff
end


end # MglExpr

class MglVar

# MGL variables.
# Evaluates the formula for 'x','r'=x, 'y','n'=y, 'z','t'=z, 'a','u'=u.
# @overload move_after(var)
#  @param [MglVar] var 
#  @return [nil]
def move_after
end


end # MglVar

