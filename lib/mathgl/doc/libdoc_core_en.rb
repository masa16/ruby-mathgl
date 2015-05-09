# This document is converted from core_en.texi.

# module MathGL
module MathGL

# MglGraph class
class MglGraph

# .
# Return nonzero if MathGL version is appropriate for required by ver, i.e. if major version is the same and minor version is greater or equal to one in ver.
#
# @overload check_version(ver)
#  @param [String] ver 
#  @return [bool]
def check_version
end


# Create and delete objects.
# Creates the instance of class mglGraph with specified sizes width and height. Parameter kind may have following values: '0' -- use default plotter, '1' -- use OpenGL plotter.
#
# @overload initialize(kind=0,width=600,height=400)
#  @param [Integer] kind default=0
#  @param [Integer] width default=600
#  @param [Integer] height default=400
#  @return [MglGraph]
#
# @overload initialize(gr)
#  @param [MglGraph] gr 
#  @return [MglGraph]
def initialize
end


# Graphics setup.
# Restore initial values for all of parameters and clear the image.
#
# @overload default_plot_param()
#  @return [nil]
def default_plot_param
end


# Transparency.
# Sets the transparency on/off and returns previous value of transparency. It is recommended to call this function before any plotting command. Default value is transparency off.
#
# @overload alpha(enable)
#  @param [bool] enable 
#  @return [nil]
def alpha
end


# Transparency.
# Sets default value of alpha channel (transparency) for all plotting functions. Initial value is 0.5.
#
# @overload set_alpha_def(val)
#  @param [Float] val 
#  @return [nil]
def set_alpha_def
end


# Transparency.
# Set the type of transparency. Possible values are:
# Types of transparency.
#
# @overload set_transp_type(type)
#  @param [Integer] type 
#  @return [nil]
def set_transp_type
end


# Lighting.
# Sets the using of light on/off for overall plot. Function returns previous value of lighting. Default value is lightning off.
#
# @overload light(enable)
#  @param [bool] enable 
#  @return [bool]
def light
end


# Lighting.
# Switch on/off n-th light source separately.
#
# @overload light(n,enable)
#  @param [Integer] n 
#  @param [bool] enable 
#  @return [nil]
def light
end


# Lighting.
# The function adds a light source with identification n in direction d with color c and with brightness bright (which must be in range (0,1)). If position r is specified and isn't NAN then light source is supposed to be local otherwise light source is supposed to be placed at infinity.
#
# @overload add_light(n,d,c='w',bright=0.5,ap=0)
#  @param [Integer] n 
#  @param [MglPoint] d 
#  @param [String] c default='w'
#  @param [Float] bright default=0.5
#  @param [Float] ap default=0
#  @return [nil]
#
# @overload add_light(n,r,d,c='w',bright=0.5,ap=0)
#  @param [Integer] n 
#  @param [MglPoint] r 
#  @param [MglPoint] d 
#  @param [String] c default='w'
#  @param [Float] bright default=0.5
#  @param [Float] ap default=0
#  @return [nil]
def add_light
end


# Lighting.
# Set brightness of diffusive light (only for local light sources).
#
# @overload set_diffuse(bright)
#  @param [Float] bright 
#  @return [nil]
def set_diffuse
end


# Lighting.
# Sets the brightness of ambient light. The value should be in range (0,1).
#
# @overload set_ambient(bright=0.5)
#  @param [Float] bright default=0.5
#  @return [nil]
def set_ambient
end


# Fog.
# Function imitate a fog in the plot. Fog start from relative distance dz from view point and its density growths exponentially in depth. So that the fog influence is determined by law ~ 1-exp(-d*z). Here *z* is normalized to 1 depth of the plot. If value d=0 then the fog is absent. Note, that fog was applied at stage of image creation, not at stage of drawing. Adding fog
#
# @overload fog(d,dz=0.25)
#  @param [Float] d 
#  @param [Float] dz default=0.25
#  @return [nil]
def fog
end


# Default sizes.
# Sets relative width of rectangles in bars, barh, boxplot, candle, ohlc. Default value is 0.7.
#
# @overload set_bar_width(val)
#  @param [Float] val 
#  @return [nil]
def set_bar_width
end


# Default sizes.
# Sets size of marks for 1D plotting. Default value is 1.
#
# @overload set_mark_size(val)
#  @param [Float] val 
#  @return [nil]
def set_mark_size
end


# Default sizes.
# Sets size of arrows for 1D plotting, lines and curves (see Primitives). Default value is 1.
#
# @overload set_arrow_size(val)
#  @param [Float] val 
#  @return [nil]
def set_arrow_size
end


# Default sizes.
# Sets approximate number of lines in mesh, fall, grid2 and also the number of hachures in vect, dew and the number of cells in cloud. By default (=0) it draws all lines/hachures/cells.
#
# @overload set_mesh_num(val)
#  @param [Integer] val 
#  @return [nil]
def set_mesh_num
end


# Default sizes.
# Sets approximate number of visible faces. Can be used for speeding up drawing by cost of lower quality. By default (=0) it draws all of them.
#
# @overload set_face_num(val)
#  @param [Integer] val 
#  @return [nil]
def set_face_num
end


# Default sizes.
# Sets default name id as filename for saving (in FLTK window for example).
#
# @overload set_plot_id(id)
#  @param [String] id 
#  @return [nil]
def set_plot_id
end


# Default sizes.
# Gets default name id as filename for saving (in FLTK window for example).
#
# @overload get_plot_id()
#  @return [String]
def get_plot_id
end


# Cutting.
# Flag which determines how points outside bounding box are drawn. If it is true then points are excluded from plot (it is default) otherwise the points are projected to edges of bounding box.
#
# @overload set_cut(val)
#  @param [bool] val 
#  @return [nil]
def set_cut
end


# Cutting.
# Lower and upper edge of the box in which never points are drawn. If both edges are the same (the variables are equal) then the cutting box is empty.
#
# @overload set_cut_box(p1,p1)
#  @param [MglPoint] p1 
#  @param [MglPoint] p1 
#  @return [nil]
def set_cut_box
end


# Cutting.
# Sets the cutting off condition by formula cond. This condition determine will point be plotted or not. If value of formula is nonzero then point is omitted, otherwise it plotted. Set argument as "" to disable cutting off condition.
#
# @overload cut_off(cond)
#  @param [String] cond 
#  @return [nil]
def cut_off
end


# Font settings.
# Sets to use or not text rotation.
#
# @overload set_rotated_text(val)
#  @param [bool] val 
#  @return [nil]
def set_rotated_text
end


# Font settings.
# Load font typeface from path/name. Empty name will load default font.
#
# @overload load_font(name,path="")
#  @param [String] name 
#  @param [String] path default=""
#  @return [nil]
def load_font
end


# Font settings.
# Sets the font specification (see Text printing). Default is 'rC' -- Roman font centering.
#
# @overload set_font_def(fnt)
#  @param [String] fnt 
#  @return [nil]
def set_font_def
end


# Font settings.
# Sets the size of font for tick and axis labels. Default font size of axis labels is 1.4 times large than for tick labels.
#
# @overload set_font_size(val)
#  @param [Float] val 
#  @return [nil]
def set_font_size
end


# Font settings.
# Set FontSize by size in pt and picture DPI (default is 16 pt for dpi=72).
#
# @overload set_font_size_pt(cm,dpi=72)
#  @param [Float] cm 
#  @param [Integer] dpi default=72
#  @return [nil]
def set_font_size_pt
end


# Font settings.
# Set FontSize by size in centimeters and picture DPI (default is 0.56 cm = 16 pt).
#
# @overload set_font_size_cm(cm,dpi=72)
#  @param [Float] cm 
#  @param [Integer] dpi default=72
#  @return [nil]
def set_font_size_cm
end


# Font settings.
# Set FontSize by size in inch and picture DPI (default is 0.22 in = 16 pt).
#
# @overload set_font_size_in(cm,dpi=72)
#  @param [Float] cm 
#  @param [Integer] dpi default=72
#  @return [nil]
def set_font_size_in
end


# Font settings.
# Load font typeface from path/name.
#
# @overload load_font(name,path="")
#  @param [String] name 
#  @param [String] path default=""
#  @return [nil]
def load_font
end


# Font settings.
# Copy font data from another mglGraph object.
#
# @overload copy_font(from)
#  @param [MglGraph] from 
#  @return [nil]
def copy_font
end


# Font settings.
# Restore font data to default typeface.
#
# @overload restore_font()
#  @return [nil]
def restore_font
end


# Font settings.
# Load default font typeface (for all newly created HMGL/mglGraph objects) from path/name.
#
# @overload set_def_font(name,path="")
#  @param [String] name 
#  @param [String] path default=""
#  @return [nil]
def set_def_font
end


# Palette and colors.
# Sets the palette as selected colors. Default value is "Hbgrcmyhlnqeup" that corresponds to colors: dark gray 'H', blue 'b', green 'g', red 'r', cyan 'c', magenta 'm', yellow 'y', gray 'h', blue-green 'l', sky-blue 'n', orange 'q', yellow-green 'e', blue-violet 'u', purple 'p'. The palette is used mostly in 1D plots (see 1D plotting) for curves which styles are not specified. Internal color counter will be nullified by any change of palette. This includes even hidden change (for example, by box or axis functions).
#
# @overload set_palette(colors)
#  @param [String] colors 
#  @return [nil]
def set_palette
end


# Palette and colors.
# Sets the sch as default color scheme. Default value is "BbcyrR".
#
# @overload set_def_scheme(sch)
#  @param [String] sch 
#  @return [nil]
def set_def_scheme
end


# Palette and colors.
# Sets RGB values for color with given id. This is global setting which influence on any later usage of symbol id.
#
# @overload set_color(id,r,g,b)
#  @param [String] id 
#  @param [Float] r 
#  @param [Float] g 
#  @param [Float] b 
#  @return [nil]
def set_color
end


# Masks.
# Sets new bit matrix hex of size 8*8 for mask with given id. This is global setting which influence on any later usage of symbol id. The predefined masks are (see Color scheme): '-' is 000000FF00000000, '+' is 080808FF08080808,	'=' is 0000FF00FF000000,	';' is 0000007700000000, 'o' is 0000182424180000,	'O' is 0000183C3C180000,	's' is 00003C24243C0000,	'S' is 00003C3C3C3C0000, '~' is 0000060990600000,	'<' is 0060584658600000,	'>' is 00061A621A060000,	'j' is 0000005F00000000, 'd' is 0008142214080000,	'D' is 00081C3E1C080000,	'*' is 8142241818244281,	'^' is 0000001824420000.
#
# @overload set_mask(id,hex)
#  @param [String] id 
#  @param [String] hex 
#  @return [nil]
#
# @overload set_mask(id,hex)
#  @param [String] id 
#  @param [uint64_t] hex 
#  @return [nil]
def set_mask
end


# Masks.
# Sets the default rotation angle (in degrees) for masks. Note, you can use symbols '\', '/', 'I' in color scheme for setting rotation angles as 45, -45 and 90 degrees correspondingly.
#
# @overload set_mask_angle(angle)
#  @param [Integer] angle 
#  @return [nil]
def set_mask_angle
end


# Error handling.
# Set warning code. Normally you should call this function only for clearing the warning state, i.e. call SetWarn(0);. Text info will be printed as is if code<0.
#
# @overload set_warn(code,info="")
#  @param [Integer] code 
#  @param [String] info default=""
#  @return [nil]
def set_warn
end


# Error handling.
# Return messages about matters why some plot are not drawn. If returned string is empty then there are no messages.
#
# @overload message()
#  @return [String]
def message
end


# Error handling.
# Return the numerical ID of warning about the not drawn plot. Possible values are:
#
# @overload get_warn()
#  @return [Integer]
def get_warn
end


# Error handling.
# Disable printing warnings to stderr if state is nonzero.
#
# @overload suppress_warn(state)
#  @param [bool] state 
#  @return [nil]
def suppress_warn
end


# Error handling.
# Set warning message info for global scope.
#
# @overload set_global_warn(info)
#  @param [String] info 
#  @return [nil]
def set_global_warn
end


# Error handling.
# Get warning message(s) for global scope.
#
# @overload global_warn()
#  @return [String]
def global_warn
end


# Stop drawing.
# Ask to stop drawing if stop is non-zero, otherwise reset stop flag.
#
# @overload stop(stop=true)
#  @param [bool] stop default=true
#  @return [nil]
def stop
end


# Stop drawing.
# Return true if drawing should be terminated. Also it process all events in GUI. User should call this function from time to time inside a long calculation to allow processing events for GUI.
#
# @overload need_stop()
#  @return [bool]
def need_stop
end


# Stop drawing.
# Set callback function which will be called to process events of GUI library.
#
# @overload set_event_func(func,par=NULL)
#  @param [function] func 
#  @param [nil] par default=NULL
#  @return [bool]
def set_event_func
end


# Ranges (bounding box).
# Sets or adds the range for 'x'-,'y'-,'z'- coordinate or coloring ('c'). If one of values is NAN then it is ignored. See also ranges.
#
# @overload set_range(dir,v1,v2)
#  @param [String] dir 
#  @param [Float] v1 
#  @param [Float] v2 
#  @return [nil]
def set_range
end


# Ranges (bounding box).
# Sets or adds the range for 'x'-,'y'-,'z'- coordinate or coloring ('c'). If one of values is NAN then it is ignored. See also ranges.
#
# @overload add_range(dir,v1,v2)
#  @param [String] dir 
#  @param [Float] v1 
#  @param [Float] v2 
#  @return [nil]
def add_range
end


# Ranges (bounding box).
# Sets the range for 'x'-,'y'-,'z'- coordinate or coloring ('c') as minimal and maximal values of data dat. Parameter add=on shows that the new range will be joined to existed one (not replace it).
#
# @overload set_range(dir,dat,add=false)
#  @param [String] dir 
#  @param [MglData] dat 
#  @param [bool] add default=false
#  @return [nil]
def set_range
end


# Ranges (bounding box).
# Sets the ranges of coordinates. If minimal and maximal values of the coordinate are the same then they are ignored. Also it sets the range for coloring (analogous to crange z1 z2). This is default color range for 2d plots. Initial ranges are (-1, 1).
#
# @overload set_ranges(p1,p2)
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @return [nil]
#
# @overload set_ranges(x1,x2,y1,y2,z1=0,z2=0)
#  @param [Float] x1 
#  @param [Float] x2 
#  @param [Float] y1 
#  @param [Float] y2 
#  @param [Float] z1 default=0
#  @param [Float] z2 default=0
#  @return [nil]
def set_ranges
end


# Ranges (bounding box).
# Sets the ranges of 'x'-,'y'-,'z'-coordinates and coloring as minimal and maximal values of data xx, yy, zz, cc correspondingly.
#
# @overload set_ranges(xx,yy)
#  @param [MglData] xx 
#  @param [MglData] yy 
#  @return [nil]
#
# @overload set_ranges(xx,yy,zz)
#  @param [MglData] xx 
#  @param [MglData] yy 
#  @param [MglData] zz 
#  @return [nil]
#
# @overload set_ranges(xx,yy,zz,cc)
#  @param [MglData] xx 
#  @param [MglData] yy 
#  @param [MglData] zz 
#  @param [MglData] cc 
#  @return [nil]
def set_ranges
end


# Ranges (bounding box).
# Sets the ranges for automatic coordinates. If minimal and maximal values of the coordinate are the same then they are ignored.
#
# @overload set_auto_ranges(p1,p2)
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @return [nil]
#
# @overload set_auto_ranges(x1,x2,y1,y2,z1=0,z2=0,c1=0,c2=0)
#  @param [Float] x1 
#  @param [Float] x2 
#  @param [Float] y1 
#  @param [Float] y2 
#  @param [Float] z1 default=0
#  @param [Float] z2 default=0
#  @param [Float] c1 default=0
#  @param [Float] c2 default=0
#  @return [nil]
def set_auto_ranges
end


# Ranges (bounding box).
# Sets center of axis cross section. If one of values is NAN then MathGL try to select optimal axis position.
#
# @overload set_origin(p0)
#  @param [MglPoint] p0 
#  @return [nil]
#
# @overload set_origin(x0,y0,z0=NAN)
#  @param [Float] x0 
#  @param [Float] y0 
#  @param [Float] z0 default=NAN
#  @return [nil]
def set_origin
end


# Ranges (bounding box).
# Additionally extend axis range for any settings made by SetRange or SetRanges functions according the formula min += (max-min)*p1 and max += (max-min)*p1 (or min *= (max/min)^p1 and max *= (max/min)^p1 for log-axis range when inf>max/min>100 or 0<max/min<0.01). Initial ranges are (0, 1). Attention! this settings can not be overwritten by any other functions, including DefaultPlotParam().
#
# @overload zoom_axis(p1,p2)
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @return [nil]
def zoom_axis
end


# Curved coordinates.
# Sets transformation formulas for curvilinear coordinate. Each string should contain mathematical expression for real coordinate depending on internal coordinates 'x', 'y', 'z' and 'a' or 'c' for colorbar. For example, the cylindrical coordinates are introduced as SetFunc("x*cos(y)", "x*sin(y)", "z");. For removing of formulas the corresponding parameter should be empty or NULL. Using transformation formulas will slightly slowing the program. Parameter EqA set the similar transformation formula for color scheme. Textual formulas.
#
# @overload set_func(eqx,eqy,eqz="",eqa="")
#  @param [String] eqx 
#  @param [String] eqy 
#  @param [String] eqz default=""
#  @param [String] eqa default=""
#  @return [nil]
def set_func
end


# Curved coordinates.
# Sets one of the predefined transformation formulas for curvilinear coordinate. Parameter how define the coordinates: mglCartesian=0 -- Cartesian coordinates (no transformation); mglPolar=1 -- Polar coordinates x_n=x*cos(y),y_n=x*sin(y), z_n=z; mglSpherical=2 -- Sperical coordinates x_n=x*sin(y)*cos(z), y_n=x*sin(y)*sin(z), z_n=x*cos(y); mglParabolic=3 -- Parabolic coordinates x_n=x*y, y_n=(x*x-y*y)/2, z_n=z; mglParaboloidal=4 -- Paraboloidal coordinates x_n=(x*x-y*y)*cos(z)/2, y_n=(x*x-y*y)*sin(z)/2, z_n=x*y; mglOblate=5 -- Oblate coordinates x_n=cosh(x)*cos(y)*cos(z), y_n=cosh(x)*cos(y)*sin(z), z_n=sinh(x)*sin(y); mglProlate=6 -- Prolate coordinates x_n=sinh(x)*sin(y)*cos(z), y_n=sinh(x)*sin(y)*sin(z), z_n=cosh(x)*cos(y); mglElliptic=7 -- Elliptic coordinates x_n=cosh(x)*cos(y), y_n=sinh(x)*sin(y), z_n=z; mglToroidal=8 -- Toroidal coordinates x_n=sinh(x)*cos(z)/(cosh(x)-cos(y)), y_n=sinh(x)*sin(z)/(cosh(x)-cos(y)), z_n=sin(y)/(cosh(x)-cos(y)); mglBispherical=9 -- Bispherical coordinates x_n=sin(y)*cos(z)/(cosh(x)-cos(y)), y_n=sin(y)*sin(z)/(cosh(x)-cos(y)), z_n=sinh(x)/(cosh(x)-cos(y)); mglBipolar=10 -- Bipolar coordinates x_n=sinh(x)/(cosh(x)-cos(y)), y_n=sin(y)/(cosh(x)-cos(y)), z_n=z; mglLogLog=11 -- log-log coordinates x_n=lg(x), y_n=lg(y), z_n=lg(z); mglLogX=12 -- log-x coordinates x_n=lg(x), y_n=y, z_n=z; mglLogY=13 -- log-y coordinates x_n=x, y_n=lg(y), z_n=z.
#
# @overload set_coor(how)
#  @param [Integer] how 
#  @return [nil]
def set_coor
end


# Curved coordinates.
# The function sets to draws Ternary (tern=1), Quaternary (tern=2) plot or projections (tern=4,5,6).
# 
# Ternary plot is special plot for 3 dependent coordinates (components) a, b, c so that a+b+c=1. MathGL uses only 2 independent coordinates a=x and b=y since it is enough to plot everything. At this third coordinate z act as another parameter to produce contour lines, surfaces and so on.
# 
# Correspondingly, Quaternary plot is plot for 4 dependent coordinates a, b, c and d so that a+b+c+d=1. MathGL uses only 3 independent coordinates a=x, b=y and d=z since it is enough to plot everything.
# 
# Projections can be obtained by adding value 4 to tern argument. So, that tern=4 will draw projections in Cartesian coordinates, tern=5 will draw projections in Ternary coordinates, tern=6 will draw projections in Quaternary coordinates. If you add 8 instead of 4 then all text labels will not be printed  on projections.
# 
# Use Ternary(0) for returning to usual axis. Ternary axis Axis projection
#
# @overload ternary(tern)
#  @param [Integer] tern 
#  @return [nil]
def ternary
end


# Ticks.
# Set the ticks step, number of sub-ticks and initial ticks position to be the most human readable for the axis along direction(s) dir. Also set SetTuneTicks(true). Usually you don't need to call this function except the case of returning to default settings.
#
# @overload adjust(dir="xyzc")
#  @param [String] dir default="xyzc"
#  @return [nil]
def adjust
end


# Ticks.
# Set the ticks step d, number of sub-ticks ns (used for positive d) and initial ticks position org for the axis along direction dir (use 'c' for colorbar ticks). Variable d set step for axis ticks (if positive) or it's number on the axis range (if negative). Zero value set automatic ticks. If org value is NAN then axis origin is used. Parameter fact set text which will be printed after tick label (like "\pi" for d=M_PI).
#
# @overload set_ticks(dir,d=0,ns=0,org=NAN,fact="")
#  @param [String] dir 
#  @param [Float] d default=0
#  @param [Integer] ns default=0
#  @param [Float] org default=NAN
#  @param [String] fact default=""
#  @return [nil]
def set_ticks
end


# Ticks.
# Set the manual positions val and its labels lbl for ticks along axis dir. If array val is absent then values equidistantly distributed in x-axis range are used. Labels are separated by '\n' symbol. Use SetTicks() to restore automatic ticks.
#
# @overload set_ticks_val(dir,lbl,add=false)
#  @param [String] dir 
#  @param [String] lbl 
#  @param [bool] add default=false
#  @return [nil]
#
# @overload set_ticks_val(dir,val,lbl,add=false)
#  @param [String] dir 
#  @param [MglData] val 
#  @param [String] lbl 
#  @param [bool] add default=false
#  @return [nil]
def set_ticks_val
end


# Ticks.
# The same as previous but add single tick label lbl at position val to the lest of existed ones.
#
# @overload add_tick(dir,val,lbl)
#  @param [String] dir 
#  @param [Float] val 
#  @param [String] lbl 
#  @return [nil]
def add_tick
end


# Ticks.
# Set template templ for x-,y-,z-axis ticks or colorbar ticks. It may contain TeX symbols also. If templ="" then default template is used (in simplest case it is '%.2g'). Setting on template switch off automatic ticks tuning.
#
# @overload set_tick_templ(dir,templ)
#  @param [String] dir 
#  @param [String] templ 
#  @return [nil]
def set_tick_templ
end


# Ticks.
# Sets time labels with step val and template templ for x-,y-,z-axis ticks or colorbar ticks. It may contain TeX symbols also. The format of template templ is the same as described in http://www.manpagez.com/man/3/strftime/. Most common variants are '%X' for national representation of time, '%x' for national representation of date, '%Y' for year with century. If val=0 and/or templ="" then automatic tick step and/or template will be selected. You can use mgl_get_time() function for obtaining number of second for given date/time string. Note, that MS Visual Studio couldn't handle date before 1970.
#
# @overload set_ticks_time(dir,val,templ)
#  @param [String] dir 
#  @param [Float] val 
#  @param [String] templ 
#  @return [nil]
def set_ticks_time
end


# Ticks.
# Switch on/off ticks enhancing by factoring common multiplier (for small, like from 0.001 to 0.002, or large, like from 1000 to 2000, coordinate values -- enabled if tune&1 is nonzero) or common component (for narrow range, like from 0.999 to 1.000 -- enabled if tune&2 is nonzero). Also set the position pos of common multiplier/component on the axis: =0 at minimal axis value, =1 at maximal axis value. Default value is 1.15. If tune&4 is nonzero then zeros will be added to fixed width of all axis labels.
#
# @overload set_tune_ticks(tune,pos=1.15)
#  @param [Integer] tune 
#  @param [Float] pos default=1.15
#  @return [nil]
def set_tune_ticks
end


# Ticks.
# Set value of additional shift for ticks labels.
#
# @overload set_tick_shift(d)
#  @param [MglPoint] d 
#  @return [nil]
def set_tick_shift
end


# Ticks.
# Enable/disable ticks rotation if there are too many ticks or ticks labels are too long.
#
# @overload set_tick_rotate(val)
#  @param [bool] val 
#  @return [nil]
def set_tick_rotate
end


# Ticks.
# Enable/disable ticks skipping if there are too many ticks or ticks labels are too long.
#
# @overload set_tick_skip(val)
#  @param [bool] val 
#  @return [nil]
def set_tick_skip
end


# Ticks.
# 
# Enable/disable using UTC time for ticks labels. In C/Fortran you can use mgl_set_flag(gr,val, MGL_USE_GMTIME);.
#
# @overload set_time_utc(val)
#  @param [bool] val 
#  @return [nil]
def set_time_utc
end


# Ticks.
# Enable/disable drawing of ticks labels at axis origin. In C/Fortran you can use mgl_set_flag(gr,val, MGL_NO_ORIGIN);.
#
# @overload set_origin_tick(val=true)
#  @param [bool] val default=true
#  @return [nil]
def set_origin_tick
end


# Ticks.
# The relative length of axis ticks. Default value is 0.1. Parameter stt>0 set relative length of subticks which is in sqrt(1+stt) times smaller.
#
# @overload set_tick_len(val,stt=1)
#  @param [Float] val 
#  @param [Float] stt default=1
#  @return [nil]
def set_tick_len
end


# Ticks.
# The line style of axis (stl), ticks (tck) and subticks (sub). If stl is empty then default style is used ('k' or 'w' depending on transparency type). If tck or sub is empty then axis style is used (i.e. stl).
#
# @overload set_axis_stl(stl="k",tck=0,sub=0)
#  @param [String] stl default="k"
#  @param [String] tck default=0
#  @param [String] sub default=0
#  @return [nil]
def set_axis_stl
end


# Subplots and rotation.
# Puts further plotting in a m-th cell of nx*ny grid of the whole frame area. This function set off any aspects or rotations. So it should be used first for creating the subplot. Extra space will be reserved for axis/colorbar if stl contain:
# From the aesthetical point of view it is not recommended to use this function with different matrices in the same frame. The position of the cell can be shifted from its default position by relative size dx, dy. Note, colorbar can be invisible (be out of image borders) if you set empty style ''.
#
# @overload sub_plot(nx,ny,m,stl="<>_^",dx=0,dy=0)
#  @param [Integer] nx 
#  @param [Integer] ny 
#  @param [Integer] m 
#  @param [String] stl default="<>_^"
#  @param [Float] dx default=0
#  @param [Float] dy default=0
#  @return [nil]
def sub_plot
end


# Subplots and rotation.
# Puts further plotting in a rectangle of dx*dy cells starting from m-th cell of nx*ny grid of the whole frame area. This function set off any aspects or rotations.  So it should be used first for creating subplot. Extra space will be reserved for axis/colorbar if stl contain:
#
# @overload multi_plot(nx,ny,m,dx,dy,stl="<>_^")
#  @param [Integer] nx 
#  @param [Integer] ny 
#  @param [Integer] m 
#  @param [Integer] dx 
#  @param [Integer] dy 
#  @param [String] stl default="<>_^"
#  @return [nil]
def multi_plot
end


# Subplots and rotation.
# Puts further plotting in some region of the whole frame surface. This function allows one to create a plot in arbitrary place of the screen. The position is defined by rectangular coordinates (x1, x2)*(y1, y2). The coordinates x1, x2, y1, y2 are normalized to interval (0, 1). If parameter rel=true then the relative position to current subplot (or inplot with rel=false) is used. This function set off any aspects or rotations. So it should be used first for creating subplot.
#
# @overload in_plot(x1,x2,y1,y2,rel=true)
#  @param [Float] x1 
#  @param [Float] x2 
#  @param [Float] y1 
#  @param [Float] y2 
#  @param [bool] rel default=true
#  @return [nil]
def in_plot
end


# Subplots and rotation.
# Puts further plotting in ind-th cell of column with num cells. The position is relative to previous subplot (or inplot with rel=false). Parameter d set extra gap between cells.
#
# @overload column_plot(num,ind,d=0)
#  @param [Integer] num 
#  @param [Integer] ind 
#  @param [Float] d default=0
#  @return [nil]
def column_plot
end


# Subplots and rotation.
# Puts further plotting in ind-th cell of nx*ny grid. The position is relative to previous subplot (or inplot with rel=false). Parameter d set extra gap between cells.
#
# @overload grid_plot(nx,ny,ind,d=0)
#  @param [Integer] nx 
#  @param [Integer] ny 
#  @param [Integer] ind 
#  @param [Float] d default=0
#  @return [nil]
def grid_plot
end


# Subplots and rotation.
# Puts further plotting in ind-th cell of stick with num cells. At this, stick is rotated on angles tet, phi. The position is relative to previous subplot (or inplot with rel=false).
#
# @overload stick_plot(num,ind,tet,phi)
#  @param [Integer] num 
#  @param [Integer] ind 
#  @param [Float] tet 
#  @param [Float] phi 
#  @return [nil]
def stick_plot
end


# Subplots and rotation.
# Add text title for current subplot/inplot. Parameter stl can contain:
# Parameter size set font size. This function set off any aspects or rotations. So it should be used just after creating subplot.
#
# @overload title(txt,stl="",size=-2)
#  @param [String] txt 
#  @param [String] stl default=""
#  @param [Float] size default=-2
#  @return [nil]
def title
end


# Subplots and rotation.
# Rotates a further plotting relative to each axis (x, z, y) consecutively on angles TetX, TetZ, TetY.
#
# @overload rotate(tetx,tetz,tety=0)
#  @param [Float] tetx 
#  @param [Float] tetz 
#  @param [Float] tety default=0
#  @return [nil]
def rotate
end


# Subplots and rotation.
# Rotates a further plotting around vector (x, y, z) on angle Tet.
#
# @overload rotate_n(tet,x,y,z)
#  @param [Float] tet 
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] z 
#  @return [nil]
def rotate_n
end


# Subplots and rotation.
# Defines aspect ratio for the plot. The viewable axes will be related one to another as the ratio Ax:Ay:Az. For the best effect it should be used after rotate function. If Ax is NAN then function try to select optimal aspect ratio to keep equal ranges for x-y axis. At this, Ay will specify proportionality factor, or set to use automatic one if Ay=NAN.
#
# @overload aspect(ax,ay,az=1)
#  @param [Float] ax 
#  @param [Float] ay 
#  @param [Float] az default=1
#  @return [nil]
def aspect
end


# Subplots and rotation.
# Push transformation matrix into stack. Later you can restore its current state by Pop() function.
#
# @overload push()
#  @return [nil]
def push
end


# Subplots and rotation.
# Pop (restore last 'pushed') transformation matrix into stack.
#
# @overload pop()
#  @return [nil]
def pop
end


# Subplots and rotation.
# Sets the factor of plot size. It is not recommended to set it lower then 1.5. This is some analogue of function Zoom() but applied not to overall image but for each InPlot. Use negative value or zero to enable automatic selection.
#
# @overload set_plot_factor(val)
#  @param [Float] val 
#  @return [nil]
def set_plot_factor
end


# Subplots and rotation.
# Add (switch on) the perspective to plot. The parameter a = Depth/(Depth+dz) \in (0,1). By default (a=0) the perspective is off.
#
# @overload perspective(a)
#  @param [Float] a 
#  @return [nil]
def perspective
end


# Subplots and rotation.
# Rotates a further plotting relative to each axis (x, z, y) consecutively on angles TetX, TetZ, TetY. Rotation is done independently on rotate. Attention! this settings can not be overwritten by DefaultPlotParam(). Use Zoom(0,0,1,1) to return default view.
#
# @overload view(tetx,tetz,tety=0)
#  @param [Float] tetx 
#  @param [Float] tetz 
#  @param [Float] tety default=0
#  @return [nil]
def view
end


# Subplots and rotation.
# The function changes the scale of graphics that correspond to zoom in/out of the picture. After function call the current plot will be cleared and further the picture will contain plotting from its part (x1,x2)*(y1,y2). Here picture coordinates x1, x2, y1, y2 changes from 0 to 1. Attention! this settings can not be overwritten by any other functions, including DefaultPlotParam(). Use Zoom(0,0,1,1) to return default view.
#
# @overload zoom(x1,y1,x2,y2)
#  @param [Float] x1 
#  @param [Float] y1 
#  @param [Float] x2 
#  @param [Float] y2 
#  @return [nil]
def zoom
end


# Export picture.
# Sets size of picture in pixels. This function must be called before any other plotting because it completely remove picture contents.
#
# @overload set_size(width,height)
#  @param [Integer] width 
#  @param [Integer] height 
#  @return [nil]
def set_size
end


# Export picture.
# Sets quality of the plot depending on value val: MGL_DRAW_WIRE=0 -- no face drawing (fastest), MGL_DRAW_FAST=1 -- no color interpolation (fast), MGL_DRAW_NORM=2 -- high quality (normal), MGL_DRAW_HIGH=3 -- high quality with 3d primitives (arrows and marks); MGL_DRAW_LMEM=0x4 -- direct bitmap drawing (low memory usage); MGL_DRAW_DOTS=0x8 -- for dots drawing instead of primitives (extremely fast).
#
# @overload set_quality(val=MGL_DRAW_NORM)
#  @param [Integer] val default=MGL_DRAW_NORM
#  @return [nil]
def set_quality
end


# Export picture.
# Gets quality of the plot: MGL_DRAW_WIRE=0 -- no face drawing (fastest), MGL_DRAW_FAST=1 -- no color interpolation (fast), MGL_DRAW_NORM=2 -- high quality (normal), MGL_DRAW_HIGH=3 -- high quality with 3d primitives (arrows and marks); MGL_DRAW_LMEM=0x4 -- direct bitmap drawing (low memory usage); MGL_DRAW_DOTS=0x8 -- for dots drawing instead of primitives (extremely fast).
#
# @overload get_quality()
#  @return [Integer]
def get_quality
end


# Export picture.
# Starts group definition. Groups contain objects and other groups, they are used to select a part of a model to zoom to or to make invisible or to make semitransparent and so on.
#
# @overload start_group(name)
#  @param [String] name 
#  @return [nil]
def start_group
end


# Export picture.
# Ends group definition.
#
# @overload end_group()
#  @return [nil]
def end_group
end


# Export to file.
# Exports current frame to a file fname which type is determined by the extension. Parameter descr adds description to file (can be ""). If fname="" then the file 'frame####.jpg' is used, where '####' is current frame id and name 'frame' is defined by plotid class property.
#
# @overload write_frame(fname="",descr="")
#  @param [String] fname default=""
#  @param [String] descr default=""
#  @return [nil]
def write_frame
end


# Export to file.
# Exports current frame to PNG file. Parameter fname specifies the file name, descr adds description to file, alpha gives the transparency type. By default there are no description added and semitransparent image used. This function does nothing if HAVE_PNG isn't defined during compilation of MathGL library.
#
# @overload write_png(fname,descr="",compr="",alpha=true)
#  @param [String] fname 
#  @param [String] descr default=""
#  @param [Integer] compr default=""
#  @param [bool] alpha default=true
#  @return [nil]
def write_png
end


# Export to file.
# Exports current frame to JPEG file. Parameter fname specifies the file name, descr adds description to file. By default there is no description added. This function does nothing if HAVE_JPEG isn't defined during compilation of MathGL library.
#
# @overload write_jpeg(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_jpeg
end


# Export to file.
# Exports current frame to GIF file. Parameter fname specifies the file name, descr adds description to file. By default there is no description added. This function does nothing if HAVE_GIF isn't defined during compilation of MathGL library.
#
# @overload write_gif(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_gif
end


# Export to file.
# Exports current frame to BMP file. Parameter fname specifies the file name, descr adds description to file. There is no compression used.
#
# @overload write_bmp(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_bmp
end


# Export to file.
# Exports current frame to TGA file. Parameter fname specifies the file name, descr adds description to file. There is no compression used.
#
# @overload write_tga(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_tga
end


# Export to file.
# Exports current frame to EPS file using vector representation. So it is not recommended for the export of large data plot. It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file. By default there is no description added. If file name is terminated by 'z' (for example, 'fname.eps.gz') then file will be compressed in gzip format. Note, that EPS format don't support color interpolation, and the resulting plot will look as you use quality=1 for plotting.
#
# @overload write_eps(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_eps
end


# Export to file.
# Exports current frame to EPS file using bitmap representation. Parameter fname specifies the file name, descr adds description to file. By default there is no description added. If file name is terminated by 'z' (for example, 'fname.eps.gz') then file will be compressed in gzip format.
#
# @overload write_bps(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_bps
end


# Export to file.
# Exports current frame to SVG (Scalable Vector Graphics) file using vector representation. In difference of EPS format, SVG format support transparency that allows to correctly draw semitransparent plot (like surfa, surf3a or cloud). Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name). If file name is terminated by 'z' (for example, 'fname.svgz') then file will be compressed in gzip format. Note, that SVG format don't support color interpolation, and the resulting plot will look as you use quality=1 for plotting.
#
# @overload write_svg(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_svg
end


# Export to file.
# Exports current frame to LaTeX (package Tikz/PGF) file using vector representation. Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name). Note, there is no text scaling now (for example, in subplots), what may produce miss-aligned labels.
#
# @overload write_tex(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_tex
end


# Export to file.
# Exports current frame to PRC file using vector representation (see http://en.wikipedia.org/wiki/PRC_%28file_format%29). Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name). If parameter make_pdf=true and PDF was enabled at MathGL configure then corresponding PDF file with 3D image will be created.
#
# @overload write_prc(fname,descr="",make_pdf=true)
#  @param [String] fname 
#  @param [String] descr default=""
#  @param [bool] make_pdf default=true
#  @return [nil]
def write_prc
end


# Export to file.
# Exports current frame to OBJ/MTL file using vector representation (see http://en.wikipedia.org/wiki/Wavefront_.obj_file, OBJ format for details). Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name).
#
# @overload write_obj(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_obj
end


# Export to file.
# Exports current frame to XYZ/XYZL/XYZF files using vector representation (see http://people.sc.fsu.edu/~jburkardt/data/xyz/xyz.html, XYZ format for details). Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name).
#
# @overload write_xyz(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_xyz
end


# Export to file.
# Exports current frame to STL file using vector representation (see http://en.wikipedia.org/wiki/STL_(file_format), STL format for details). Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name.
#
# @overload write_stl(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_stl
end


# Export to file.
# Exports current frame to OFF file using vector representation (see http://people.sc.fsu.edu/~jburkardt/data/off/off.html, OFF format for details). Note, the output file may be too large for graphic of large data array (especially for surfaces). It is better to use bitmap format (for example PNG or JPEG). However, program has no internal limitations for size of output file. Parameter fname specifies the file name, descr adds description to file (default is file name).
#
# @overload write_off(fname,descr="",colored=false)
#  @param [String] fname 
#  @param [String] descr default=""
#  @param [bool] colored default=false
#  @return [nil]
def write_off
end


# Export to file.
# Displays the current picture using external program viewer for viewing. The function save the picture to temporary file and call viewer to display it. If nowait=true then the function return immediately (it will not wait while window will be closed).
#
# @overload show_image(viewer,nowait=false)
#  @param [String] viewer 
#  @param [bool] nowait default=false
#  @return [nil]
def show_image
end


# Export to file.
# Exports current frame to textual file using JSON format. Later this file can be used for faster loading and viewing by JavaScript script. Parameter fname specifies the file name, descr adds description to file.
#
# @overload write_json(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def write_json
end


# Export to file.
# Exports points and primitives in file using MGLD format. Later this file can be used for faster loading and viewing by mglview utility. Parameter fname specifies the file name, descr adds description to file (default is file name).
#
# @overload export_mgld(fname,descr="")
#  @param [String] fname 
#  @param [String] descr default=""
#  @return [nil]
def export_mgld
end


# Export to file.
# Imports points and primitives in file using MGLD format. Later this file can be used for faster loading and viewing by mglview utility. Parameter fname specifies the file name, add sets to append or replace primitives to existed ones.
#
# @overload import_mgld(fname,add=false)
#  @param [String] fname 
#  @param [bool] add default=false
#  @return [nil]
def import_mgld
end


# Frames/Animation.
# Creates new frame. Function returns current frame id. This is not thread safe function in OpenGL mode! Use direct list creation in multi-threading drawing. The function EndFrame() must be call after the finishing of the frame drawing for each call of this function.
#
# @overload new_frame()
#  @return [nil]
def new_frame
end


# Frames/Animation.
# Finishes the frame drawing.
#
# @overload end_frame()
#  @return [nil]
def end_frame
end


# Frames/Animation.
# Gets the number of created frames.
#
# @overload get_num_frame()
#  @return [Integer]
def get_num_frame
end


# Frames/Animation.
# Finishes the frame drawing and sets drawing data to frame i, which should be in range (0, GetNumFrame()-1). This function is similar to EndFrame() but don't add frame to the GIF image.
#
# @overload set_frame(i)
#  @param [Integer] i 
#  @return [nil]
def set_frame
end


# Frames/Animation.
# Replaces drawing data by one from frame i. Function work if MGL_VECT_FRAME is set on (by default).
#
# @overload get_frame(i)
#  @param [Integer] i 
#  @return [nil]
def get_frame
end


# Frames/Animation.
# Appends drawing data from frame i to current one. Function work if MGL_VECT_FRAME is set on (by default).
#
# @overload show_frame(i)
#  @param [Integer] i 
#  @return [nil]
def show_frame
end


# Frames/Animation.
# Deletes drawing data for frame i and shift all later frame indexes. Function work if MGL_VECT_FRAME is set on (by default). Do nothing in OpenGL mode.
#
# @overload del_frame(i)
#  @param [Integer] i 
#  @return [nil]
def del_frame
end


# Frames/Animation.
# Reset frames counter (start it from zero).
#
# @overload reset_frames()
#  @return [nil]
def reset_frames
end


# Frames/Animation.
# Clear list of primitives for current drawing.
#
# @overload clear_frame(i)
#  @param [Integer] i 
#  @return [nil]
def clear_frame
end


# Frames/Animation.
# Start writing frames into animated GIF file fname. Parameter ms set the delay between frames in milliseconds. You should not change the picture size during writing the cinema. Use CloseGIF() to finalize writing. Note, that this function is disabled in OpenGL mode.
#
# @overload start_gif(fname,ms=100)
#  @param [String] fname 
#  @param [Integer] ms default=100
#  @return [nil]
def start_gif
end


# Frames/Animation.
# Finish writing animated GIF and close connected pointers.
#
# @overload close_gif()
#  @return [nil]
def close_gif
end


# Bitmap in memory.
# Gets RGB bitmap of the current state of the image. Format of each element of bits is: (red, green, blue). Number of elements is Width*Height. Position of element (i,j) is (3*i + 3*Width*j) (or is (4*i + 4*Width*j) for GetBGRN()). You have to provide the proper size of the buffer, buf, i.e. the code for Python should look like
#
# @overload get_rgb()
#  @return [unsigned char]
#
# @overload get_rgb(buf,size)
#  @param [String] buf 
#  @param [Integer] size 
#  @return [nil]
def get_rgb
end


# Bitmap in memory.
# Gets RGB bitmap of the current state of the image. Format of each element of bits is: (red, green, blue). Number of elements is Width*Height. Position of element (i,j) is (3*i + 3*Width*j) (or is (4*i + 4*Width*j) for GetBGRN()). You have to provide the proper size of the buffer, buf, i.e. the code for Python should look like
#
# @overload get_bgrn(buf,size)
#  @param [String] buf 
#  @param [Integer] size 
#  @return [nil]
def get_bgrn
end


# Bitmap in memory.
# Gets RGBA bitmap of the current state of the image. Format of each element of bits is: (red, green, blue, alpha). Number of elements is Width*Height. Position of element (i,j) is (4*i + 4*Width*j).
#
# @overload get_rgba()
#  @return [unsigned char]
#
# @overload get_rgba(buf,size)
#  @param [String] buf 
#  @param [Integer] size 
#  @return [nil]
def get_rgba
end


# Bitmap in memory.
# Gets width and height of the image.
#
# @overload get_width()
#  @return [Integer]
def get_width
end


# Bitmap in memory.
# Gets width and height of the image.
#
# @overload get_height()
#  @return [Integer]
def get_height
end


# Bitmap in memory.
# Calculate 3D coordinate (x,y,z) for screen point (xs,ys). At this moment it ignore perspective and transformation formulas (curvilinear coordinates). The calculation are done for the last used InPlot (see Subplots and rotation).
#
# @overload calc_xyz(xs,ys)
#  @param [Integer] xs 
#  @param [Integer] ys 
#  @return [MglPoint]
def calc_xyz
end


# Bitmap in memory.
# Calculate screen point (xs,ys) for 3D coordinate (x,y,z). The calculation are done for the last used InPlot (see Subplots and rotation).
#
# @overload calc_scr(p)
#  @param [MglPoint] p 
#  @return [MglPoint]
def calc_scr
end


# Bitmap in memory.
# Set the numeric id for object or subplot/inplot.
#
# @overload set_obj_id(id)
#  @param [Integer] id 
#  @return [nil]
def set_obj_id
end


# Bitmap in memory.
# Get the numeric id for most upper object at pixel (xs, ys) of the picture.
#
# @overload get_obj_id(xs,ys)
#  @param [Integer] xs 
#  @param [Integer] ys 
#  @return [Integer]
def get_obj_id
end


# Bitmap in memory.
# Get the numeric id for most subplot/inplot at pixel (xs, ys) of the picture.
#
# @overload get_spl_id(xs,ys)
#  @param [Integer] xs 
#  @param [Integer] ys 
#  @return [Integer]
def get_spl_id
end


# Bitmap in memory.
# Highlight the object with given id.
#
# @overload highlight(id)
#  @param [Integer] id 
#  @return [nil]
def highlight
end


# Bitmap in memory.
# Checks if point (xs, ys) is close to one of active point (i.e. mglBase::Act) with accuracy d and return its index or -1 if not found. Active points are special points which characterize primitives (like edges and so on). This function for advanced users only.
#
# @overload is_active(xs,ys,d=1)
#  @param [Integer] xs 
#  @param [Integer] ys 
#  @param [Integer] d default=1
#  @return [long]
def is_active
end


# Bitmap in memory.
# Limits drawing region by rectangular area of m-th cell of matrix with sizes nx*ny (like in subplot). This function can be used to update only small region of the image for purposes of higher speed. This function for advanced users only.
#
# @overload set_draw_reg(nx=1,ny=1,m=0)
#  @param [Integer] nx default=1
#  @param [Integer] ny default=1
#  @param [Integer] m default=0
#  @return [long]
def set_draw_reg
end


# Parallelization.
# Combine drawing from instance g with gr (or with this) taking into account Z-ordering of pixels. The width and height of both instances must be the same.
#
# @overload combine(g)
#  @param [MglGraph] g 
#  @return [Integer]
def combine
end


# Parallelization.
# Send graphical information from node id using MPI. The width and height in both nodes must be the same.
#
# @overload mpi_send(id)
#  @param [Integer] id 
#  @return [Integer]
def mpi_send
end


# Parallelization.
# Receive graphical information from node id using MPI. The width and height in both nodes must be the same.
#
# @overload mpi_recv(id)
#  @param [Integer] id 
#  @return [Integer]
def mpi_recv
end


# Background.
# Clear the picture and fill background by specified color.
#
# @overload clf()
#  @return [nil]
#
# @overload clf(col)
#  @param [String] col 
#  @return [nil]
#
# @overload clf(col)
#  @param [String] col 
#  @return [nil]
#
# @overload clf(r,g,b)
#  @param [Float] r 
#  @param [Float] g 
#  @param [Float] b 
#  @return [nil]
def clf
end


# Background.
# Force drawing the plot and use it as background. After it, function clear the list of primitives, like clf. This function is useful if you want save part of plot as bitmap one (for example, large surfaces, isosurfaces or vector fields) and keep some parts as vector one (like annotation, curves, axis and so on).
#
# @overload rasterize()
#  @return [nil]
def rasterize
end


# Background.
# Load PNG or JPEG file fname as background for the plot. Parameter alpha manually set transparency of the background.
#
# @overload load_background(fname,alpha=1)
#  @param [String] fname 
#  @param [Float] alpha default=1
#  @return [nil]
def load_background
end


# Primitives.
# Draws a mark (point '.' by default) at position p=(x, y, z) with color col.
#
# @overload ball(p,col='r')
#  @param [MglPoint] p 
#  @param [String] col default='r'
#  @return [nil]
def ball
end


# Primitives.
# Draws a mark (point '.' by default) at position p=(x, y, z) with color col.
#
# @overload mark(p,mark)
#  @param [MglPoint] p 
#  @param [String] mark 
#  @return [nil]
def mark
end


# Primitives.
# Draws a 3d error box at position p=(x, y, z) with sizes e=(ex, ey, ez) and style stl. Use NAN for component of e to reduce number of drawn elements.
#
# @overload error(p,e,stl="")
#  @param [MglPoint] p 
#  @param [MglPoint] e 
#  @param [String] stl default=""
#  @return [nil]
def error
end


# Primitives.
# Draws a geodesic line (straight line in Cartesian coordinates) from point p1 to p2 using line style stl. Parameter num define the ``quality'' of the line. If num=2 then the stright line will be drawn in all coordinate system (independently on transformation formulas (see Curved coordinates). Contrary, for large values (for example, =100) the geodesic line will be drawn in corresponding coordinate system (straight line in Cartesian coordinates, circle in polar coordinates and so on). Line will be drawn even if it lies out of bounding box.
#
# @overload line(p1,p2,stl="B",num=2)
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @param [String] stl default="B"
#  @param [Integer] num default=2
#  @return [nil]
def line
end


# Primitives.
# Draws Bezier-like curve from point p1 to p2 using line style stl. At this tangent is codirected with d1, d2 and proportional to its amplitude. Parameter num define the ``quality'' of the curve. If num=2 then the straight line will be drawn in all coordinate system (independently on transformation formulas, see Curved coordinates). Contrary, for large values (for example, =100) the spline like Bezier curve will be drawn in corresponding coordinate system. Curve will be drawn even if it lies out of bounding box.
#
# @overload curve(p1,d1,p2,d2,stl="B",num=100)
#  @param [MglPoint] p1 
#  @param [MglPoint] d1 
#  @param [MglPoint] p2 
#  @param [MglPoint] d2 
#  @param [String] stl default="B"
#  @param [Integer] num default=100
#  @return [nil]
def curve
end


# Primitives.
# Draws the solid quadrangle (face) with vertexes p1, p2, p3, p4 and with color(s) stl. At this colors can be the same for all vertexes or different if all 4 colors are specified for each vertex. Face will be drawn even if it lies out of bounding box.
#
# @overload face(p1,p2,p3,p4,stl="w")
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @param [MglPoint] p3 
#  @param [MglPoint] p4 
#  @param [String] stl default="w"
#  @return [nil]
def face
end


# Primitives.
# Draws the solid rectangle (face) perpendicular to (x,y,z)-axis correspondingly at position (x0, y0, z0) with color stl and with widths wx, wy, wz along corresponding directions. At this colors can be the same for all vertexes or separately if all 4 colors are specified for each vertex. Parameters d1!=0, d2!=0 set additional shift of the last vertex (i.e. to draw quadrangle). Face will be drawn even if it lies out of bounding box.
#
# @overload face_x(x0,y0,z0,wy,wz,stl="w",d1=0,d2=0)
#  @param [Float] x0 
#  @param [Float] y0 
#  @param [Float] z0 
#  @param [Float] wy 
#  @param [Float] wz 
#  @param [String] stl default="w"
#  @param [Float] d1 default=0
#  @param [Float] d2 default=0
#  @return [nil]
def face_x
end


# Primitives.
# Draws the solid rectangle (face) perpendicular to (x,y,z)-axis correspondingly at position (x0, y0, z0) with color stl and with widths wx, wy, wz along corresponding directions. At this colors can be the same for all vertexes or separately if all 4 colors are specified for each vertex. Parameters d1!=0, d2!=0 set additional shift of the last vertex (i.e. to draw quadrangle). Face will be drawn even if it lies out of bounding box.
#
# @overload face_y(x0,y0,z0,wx,wz,stl="w",d1=0,d2=0)
#  @param [Float] x0 
#  @param [Float] y0 
#  @param [Float] z0 
#  @param [Float] wx 
#  @param [Float] wz 
#  @param [String] stl default="w"
#  @param [Float] d1 default=0
#  @param [Float] d2 default=0
#  @return [nil]
def face_y
end


# Primitives.
# Draws the solid rectangle (face) perpendicular to (x,y,z)-axis correspondingly at position (x0, y0, z0) with color stl and with widths wx, wy, wz along corresponding directions. At this colors can be the same for all vertexes or separately if all 4 colors are specified for each vertex. Parameters d1!=0, d2!=0 set additional shift of the last vertex (i.e. to draw quadrangle). Face will be drawn even if it lies out of bounding box.
#
# @overload face_z(x0,y0,z0,wx,wy,stl="w",d1=0,d2=0)
#  @param [Float] x0 
#  @param [Float] y0 
#  @param [Float] z0 
#  @param [Float] wx 
#  @param [Float] wy 
#  @param [String] stl default="w"
#  @param [Float] d1 default=0
#  @param [Float] d2 default=0
#  @return [nil]
def face_z
end


# Primitives.
# Draw the sphere with radius r and center at point p=(x0, y0, z0) and color stl.
#
# @overload sphere(p,r,stl="r")
#  @param [MglPoint] p 
#  @param [Float] r 
#  @param [String] stl default="r"
#  @return [nil]
def sphere
end


# Primitives.
# Draw the drop with radius r at point p elongated in direction d and with color col. Parameter shift set the degree of drop oblongness: '0' is sphere, '1' is maximally oblongness drop. Parameter ap set relative width of the drop (this is analogue of ``ellipticity'' for the sphere).
#
# @overload drop(p,d,r,col="r",shift=1,ap=1)
#  @param [MglPoint] p 
#  @param [MglPoint] d 
#  @param [Float] r 
#  @param [String] col default="r"
#  @param [Float] shift default=1
#  @param [Float] ap default=1
#  @return [nil]
def drop
end


# Primitives.
# Draw tube (or truncated cone if edge=false) between points p1, p2 with radius at the edges r1, r2. If r2<0 then it is supposed that r2=r1. The cone color is defined by string stl. Parameter stl can contain:
#
# @overload cone(p1,p2,r1,r2=-1,stl="B")
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @param [Float] r1 
#  @param [Float] r2 default=-1
#  @param [String] stl default="B"
#  @return [nil]
def cone
end


# Primitives.
# Draw the circle with radius r and center at point p=(x0, y0, z0). Parameter col may contain
#
# @overload circle(p,r,stl="r")
#  @param [MglPoint] p 
#  @param [Float] r 
#  @param [String] stl default="r"
#  @return [nil]
def circle
end


# Primitives.
# Draw the ellipse with radius r and focal points p1, p2. Parameter col may contain
#
# @overload ellipse(p1,p2,r,col="r")
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @param [Float] r 
#  @param [String] col default="r"
#  @return [nil]
def ellipse
end


# Primitives.
# Draw the rhombus with width r and edge points p1, p2. Parameter col may contain
#
# @overload rhomb(p1,p2,r,col="r")
#  @param [MglPoint] p1 
#  @param [MglPoint] p2 
#  @param [Float] r 
#  @param [String] col default="r"
#  @return [nil]
def rhomb
end


# Primitives.
# Draw the arc around axis pa (default is z-axis pa=(0,0,1)) with center at p0 and starting from point p1. Parameter a set the angle of arc in degree. Parameter col may contain color of the arc and arrow style for arc edges.
#
# @overload arc(p0,p1,a,col="r")
#  @param [MglPoint] p0 
#  @param [MglPoint] p1 
#  @param [Float] a 
#  @param [String] col default="r"
#  @return [nil]
#
# @overload arc(p0,pa,p1,a,col="r")
#  @param [MglPoint] p0 
#  @param [MglPoint] pa 
#  @param [MglPoint] p1 
#  @param [Float] a 
#  @param [String] col default="r"
#  @return [nil]
def arc
end


# Primitives.
# Draw the polygon with num edges starting from p1. The center of polygon is located in p0. Parameter col may contain
#
# @overload polygon(p0,p1,num,col="r")
#  @param [MglPoint] p0 
#  @param [MglPoint] p1 
#  @param [Integer] num 
#  @param [String] col default="r"
#  @return [nil]
def polygon
end


# Primitives.
# Draw bitmap (logo) along whole axis range, which can be changed by Command options. Bitmap can be loaded from file or specified as RGBA values for pixels. Parameter smooth set to draw bitmap without or with color interpolation.
#
# @overload logo(fname,smooth=false,opt="")
#  @param [String] fname 
#  @param [bool] smooth default=false
#  @param [String] opt default=""
#  @return [nil]
#
# @overload logo(w,h,rgba,smooth=false,opt="")
#  @param [long] w 
#  @param [long] h 
#  @param [unsigned char] rgba 
#  @param [bool] smooth default=false
#  @param [String] opt default=""
#  @return [nil]
def logo
end


# Text printing.
# The function plots the string text at position p with fonts specifying by the criteria fnt. The size of font is set by size parameter (default is -1).
#
# @overload puts(p,text,fnt=":C",size=-1)
#  @param [MglPoint] p 
#  @param [String] text 
#  @param [String] fnt default=":C"
#  @param [Float] size default=-1
#  @return [nil]
#
# @overload puts(x,y,text,fnt=":AC",size=-1)
#  @param [Float] x 
#  @param [Float] y 
#  @param [String] text 
#  @param [String] fnt default=":AC"
#  @param [Float] size default=-1
#  @return [nil]
def puts
end


# Text printing.
# The function plots the string text at position p along direction d with specified size. Parameter fnt set text style and text position: under ('T') or above ('t') the line.
#
# @overload puts(p,d,text,fnt=":L",size=-1)
#  @param [MglPoint] p 
#  @param [MglPoint] d 
#  @param [String] text 
#  @param [String] fnt default=":L"
#  @param [Float] size default=-1
#  @return [nil]
def puts
end


# Text printing.
# The function draws text along the curve between points (x(i), y(i), z(i)) by font style fnt. The string fnt may contain symbols 't' for printing the text under the curve (default), or 'T' for printing the text under the curve. The sizes of 1st dimension must be equal for all arrays x.nx=y.nx=z.nx. If array x is not specified then its an automatic array is used with values equidistantly distributed in x-axis range (see Ranges (bounding box)). If array z is not specified then z(i) equal to minimal z-axis value is used. String opt contain command options (see Command options).
#
# @overload text(y,text,fnt="",opt="")
#  @param [MglData] y 
#  @param [String] text 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload text(x,y,text,fnt="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] text 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload text(x,y,z,text,fnt="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] text 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
def text
end


# Axis and Colorbar.
# Draws axes with ticks (see Axis settings). Parameter dir may contain:
# Styles of ticks and axis can be overrided by using stl string. Axis and ticks
#
# @overload axis(dir="xyz",stl="",opt="")
#  @param [String] dir default="xyz"
#  @param [String] stl default=""
#  @param [String] opt default=""
#  @return [nil]
def axis
end


# Axis and Colorbar.
# Draws colorbar. Parameter sch may contain:
# Colorbars
#
# @overload colorbar(sch="")
#  @param [String] sch default=""
#  @return [nil]
def colorbar
end


# Axis and Colorbar.
# The same as previous but with sharp colors sch (current palette if sch="") for values v. ContD sample
#
# @overload colorbar(v,sch="")
#  @param [MglData] v 
#  @param [String] sch default=""
#  @return [nil]
def colorbar
end


# Axis and Colorbar.
# The same as first one but at arbitrary position of subplot (x, y) (supposed to be in range (0,1)). Parameters w, h set the relative width and height of the colorbar.
#
# @overload colorbar(sch,x,y,w=1,h=1)
#  @param [String] sch 
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] w default=1
#  @param [Float] h default=1
#  @return [nil]
def colorbar
end


# Axis and Colorbar.
# The same as previous but with sharp colors sch (current palette if sch="") for values v. ContD sample
#
# @overload colorbar(v,sch,x,y,w=1,h=1)
#  @param [MglData] v 
#  @param [String] sch 
#  @param [Float] x 
#  @param [Float] y 
#  @param [Float] w default=1
#  @param [Float] h default=1
#  @return [nil]
def colorbar
end


# Axis and Colorbar.
# Draws grid lines perpendicular to direction determined by string parameter dir. If dir contain '!' then grid lines will be drawn at coordinates of subticks also. The step of grid lines is the same as tick step for axis. The style of lines is determined by pen parameter (default value is dark blue solid line 'B-').
#
# @overload grid(dir="xyz",pen="B",opt="")
#  @param [String] dir default="xyz"
#  @param [String] pen default="B"
#  @param [String] opt default=""
#  @return [nil]
def grid
end


# Axis and Colorbar.
# Draws bounding box outside the plotting volume with color col. If col contain '@' then filled faces are drawn. At this first color is used for faces (default is light yellow), last one for edges. Bounding box
#
# @overload box(col="",ticks=true)
#  @param [String] col default=""
#  @param [bool] ticks default=true
#  @return [nil]
def box
end


# Axis and Colorbar.
# Prints the label text for axis dir='x','y','z','t' (here 't' is ``ternary'' axis t=1-x-y). The position of label is determined by pos parameter. If pos=0 then label is printed at the center of axis. If pos>0 then label is printed at the maximum of axis. If pos<0 then label is printed at the minimum of axis. Option value set additional shifting of the label. Text printing.
#
# @overload label(dir,text,pos=1,opt="")
#  @param [String] dir 
#  @param [String] text 
#  @param [Float] pos default=1
#  @param [String] opt default=""
#  @return [nil]
def label
end


# Legend.
# Draws legend of accumulated legend entries by font fnt with size. Parameter pos sets the position of the legend: '0' is bottom left corner, '1' is bottom right corner, '2' is top left corner, '3' is top right corner (is default). Parameter fnt can contain colors for face (1st one), for border (2nd one) and for text (last one). If less than 3 colors are specified then the color for border is black (for 2 and less colors), and the color for face is white (for 1 or none colors). If string fnt contain '#' then border around the legend is drawn. If string fnt contain '-' then legend entries will arranged horizontally. Option value set the space between line samples and text (default is 0.1).
#
# @overload legend(pos=0x3,fnt="#",opt="")
#  @param [Integer] pos default=0x3
#  @param [String] fnt default="#"
#  @param [String] opt default=""
#  @return [nil]
def legend
end


# Legend.
# Draws legend of accumulated legend entries by font fnt with size. Position of legend is determined by parameter x, y which supposed to be normalized to interval (0,1). Option value set the space between line samples and text (default is 0.1).
#
# @overload legend(x,y,fnt="#",opt="")
#  @param [Float] x 
#  @param [Float] y 
#  @param [String] fnt default="#"
#  @param [String] opt default=""
#  @return [nil]
def legend
end


# Legend.
# Adds string text to internal legend accumulator. The style of described line and mark is specified in string style (see Line styles).
#
# @overload add_legend(text,style)
#  @param [String] text 
#  @param [String] style 
#  @return [nil]
def add_legend
end


# Legend.
# Clears saved legend strings.
#
# @overload clear_legend()
#  @return [nil]
def clear_legend
end


# Legend.
# Set the number of marks in the legend. By default 1 mark is used.
#
# @overload set_legend_marks(num)
#  @param [Integer] num 
#  @return [nil]
def set_legend_marks
end


# 1D plotting.
# These functions draw continuous lines between points (x(i), y(i), z(i)). See also area, step, stem, tube, mark, error, belt, tens, tape. Plot sample
#
# @overload plot(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload plot(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload plot(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def plot
end


# 1D plotting.
# This functions draws radar chart which is continuous lines between points located on an radial lines (like plot in Polar coordinates). Option value set the additional shift of data (i.e. the data a+value is used instead of a). If value<0 then r=max(0, -min(value). If pen containt '#' symbol then "grid" (radial lines and circle for r) is drawn. See also plot. Radar sample
#
# @overload radar(a,pen="",opt="")
#  @param [MglData] a 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def radar
end


# 1D plotting.
# These functions draw continuous stairs for points to axis plane. See also plot, stem, tile, boxs. Step sample
#
# @overload step(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload step(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload step(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def step
end


# 1D plotting.
# These functions draw continuous lines between points (x(i), y(i), z(i)) with color defined by the special array c(i) (look like tension plot). String pen specifies the color scheme (see Color scheme) and style and/or width of line (see Line styles). See also plot, mesh, fall. Tens sample
#
# @overload tens(y,c,pen="",opt="")
#  @param [MglData] y 
#  @param [MglData] c 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tens(x,y,c,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] c 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tens(x,y,z,c,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def tens
end


# 1D plotting.
# These functions draw tapes of normals for curve between points (x(i), y(i), z(i)). Initial tape(s) was selected in x-y plane (for 'x' in pen) and/or y-z plane (for 'x' in pen). The width of tape is proportional to barwidth and can be changed by option value. See also plot, flow, barwidth. Tape sample
#
# @overload tape(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tape(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tape(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def tape
end


# 1D plotting.
# These functions draw continuous lines between points and fills it to axis plane. Also you can use gradient filling if number of specified colors is equal to 2*number of curves. See also plot, bars, stem, region. Area sample
#
# @overload area(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload area(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload area(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def area
end


# 1D plotting.
# These functions fill area between 2 curves. Dimensions of arrays y1 and y2 must be equal. Also you can use gradient filling if number of specified colors is equal to 2*number of curves. If for 2D version pen contain symbol 'i' then only area with y1<y<y2 will be filled else the area with y2<y<y1 will be filled too. See also area, bars, stem. Region sample
#
# @overload region(y1,y2,pen="",opt="")
#  @param [MglData] y1 
#  @param [MglData] y2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload region(x,y1,y2,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y1 
#  @param [MglData] y2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload region(x1,y1,x2,y2,pen="",opt="")
#  @param [MglData] x1 
#  @param [MglData] y1 
#  @param [MglData] x2 
#  @param [MglData] y2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload region(x1,y1,z1,x2,y2,z2,pen="",opt="")
#  @param [MglData] x1 
#  @param [MglData] y1 
#  @param [MglData] z1 
#  @param [MglData] x2 
#  @param [MglData] y2 
#  @param [MglData] z2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def region
end


# 1D plotting.
# These functions draw vertical lines from points to axis plane. See also area, bars, plot, mark. Stem sample
#
# @overload stem(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload stem(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload stem(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def stem
end


# 1D plotting.
# These functions draw vertical bars from points to axis plane. If string pen contain symbol 'a' then lines are drawn one above another (like summation). If string contain symbol 'f' then waterfall chart is drawn for determining the cumulative effect of sequentially introduced positive or negative values. You can give different colors for positive and negative values if number of specified colors is equal to 2*number of curves. If pen contain '<', '^' or '>' then boxes will be aligned left, right or centered at its x-coordinates. See also barh, cones, area, stem, chart, barwidth. Bars sample
#
# @overload bars(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload bars(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload bars(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def bars
end


# 1D plotting.
# These functions draw horizontal bars from points to axis plane. If string contain symbol 'a' then lines are drawn one above another (like summation). If string contain symbol 'f' then waterfall chart is drawn for determining the cumulative effect of sequentially introduced positive or negative values. You can give different colors for positive and negative values if number of specified colors is equal to 2*number of curves. If pen contain '<', '^' or '>' then boxes will be aligned left, right or centered at its x-coordinates. See also bars, barwidth. Barh sample
#
# @overload barh(v,pen="",opt="")
#  @param [MglData] v 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload barh(y,v,pen="",opt="")
#  @param [MglData] y 
#  @param [MglData] v 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def barh
end


# 1D plotting.
# These functions draw cones from points to axis plane. If string contain symbol 'a' then cones are drawn one above another (like summation). You can give different colors for positive and negative values if number of specified colors is equal to 2*number of curves. Parameter pen can contain:
# See also bars, cone, barwidth. Cones sample
#
# @overload cones(y,pen="",opt="")
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cones(x,y,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cones(x,y,z,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def cones
end


# 1D plotting.
# The function draws colored stripes (boxes) for data in array a. The number of stripes is equal to the number of rows in a (equal to a.ny). The color of each next stripe is cyclically changed from colors specified in string col or in palette Pal (see Palette and colors). Spaces in colors denote transparent ``color'' (i.e. corresponding stripe(s) are not drawn). The stripe width is proportional to value of element in a. Chart is plotted only for data with non-negative elements. If string col have symbol '#' then black border lines are drawn. The most nice form the chart have in 3d (after rotation of coordinates) or in cylindrical coordinates (becomes so called Pie chart). Chart sample
#
# @overload chart(a,col="",opt="")
#  @param [MglData] a 
#  @param [String] col default=""
#  @param [String] opt default=""
#  @return [nil]
def chart
end


# 1D plotting.
# These functions draw boxplot (also known as a box-and-whisker diagram) at points x(i). This is five-number summaries of data a(i,j) (minimum, lower quartile (Q1), median (Q2), upper quartile (Q3) and maximum) along second (j-th) direction. If pen contain '<', '^' or '>' then boxes will be aligned left, right or centered at its x-coordinates. See also plot, error, bars, barwidth. BoxPlot sample
#
# @overload box_plot(a,pen="",opt="")
#  @param [MglData] a 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload box_plot(x,a,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] a 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def box_plot
end


# 1D plotting.
# These functions draw candlestick chart at points x(i). This is a combination of a line-chart and a bar-chart, in that each bar represents the range of price movement over a given time interval. Wire (or white) candle correspond to price growth v1(i)<v2(i), opposite case -- solid (or dark) candle. You can give different colors for growth and decrease values if number of specified colors is equal to 2. If pen contain '#' then the wire candle will be used even for 2-color scheme. "Shadows" show the minimal y1 and maximal y2 prices. If v2 is absent then it is determined as v2(i)=v1(i+1). See also plot, bars, ohlc, barwidth. Candle sample
#
# @overload candle(v1,pen="",opt="")
#  @param [MglData] v1 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload candle(v1,v2,pen="",opt="")
#  @param [MglData] v1 
#  @param [MglData] v2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload candle(v1,y1,y2,pen="",opt="")
#  @param [MglData] v1 
#  @param [MglData] y1 
#  @param [MglData] y2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload candle(v1,v2,y1,y2,pen="",opt="")
#  @param [MglData] v1 
#  @param [MglData] v2 
#  @param [MglData] y1 
#  @param [MglData] y2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload candle(x,v1,v2,y1,y2,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] v1 
#  @param [MglData] v2 
#  @param [MglData] y1 
#  @param [MglData] y2 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def candle
end


# 1D plotting.
# These functions draw Open-High-Low-Close diagram. This diagram show vertical line for between maximal(high h) and minimal(low l) values, as well as horizontal lines before/after vertical line for initial(open o)/final(close c) values of some process (usually price). You can give different colors for up and down values (when closing values higher or not as in previous point) if number of specified colors is equal to 2*number of curves. See also candle, plot, barwidth. OHLC sample
#
# @overload ohlc(o,h,l,c,pen="",opt="")
#  @param [MglData] o 
#  @param [MglData] h 
#  @param [MglData] l 
#  @param [MglData] c 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload ohlc(x,o,h,l,c,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] o 
#  @param [MglData] h 
#  @param [MglData] l 
#  @param [MglData] c 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def ohlc
end


# 1D plotting.
# These functions draw error boxes (ex(i), ey(i)) at points (x(i), y(i)). This can be useful, for example, in experimental points, or to show numeric error or some estimations and so on. If string pen contain symbol '@' than large semitransparent mark is used instead of error box. See also plot, mark. Error sample
#
# @overload error(y,ey,pen="",opt="")
#  @param [MglData] y 
#  @param [MglData] ey 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload error(x,y,ey,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ey 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload error(x,y,ex,ey,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ex 
#  @param [MglData] ey 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def error
end


# 1D plotting.
# These functions draw marks with size r(i)*marksize at points (x(i), y(i), z(i)). If you need to draw markers of the same size then you can use plot function with empty line style ' '. For markers with size in axis range use error with style '@'. See also plot, textmark, error, stem. Mark sample
#
# @overload mark(y,r,pen="",opt="")
#  @param [MglData] y 
#  @param [MglData] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload mark(x,y,r,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload mark(x,y,z,r,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def mark
end


# 1D plotting.
# These functions draw string txt as marks with size proportional to r(i)*marksize at points (x(i), y(i), z(i)). By default (if omitted) r(i)=1. See also plot, mark, stem. TextMark sample
#
# @overload text_mark(y,txt,fnt="",opt="")
#  @param [MglData] y 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload text_mark(y,r,txt,fnt="",opt="")
#  @param [MglData] y 
#  @param [MglData] r 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload text_mark(x,y,r,txt,fnt="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] r 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload text_mark(x,y,z,r,txt,fnt="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] r 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
def text_mark
end


# 1D plotting.
# These functions draw string txt at points (x(i), y(i), z(i)). If string txt contain '%x', '%y', '%z' or '%n' then it will be replaced by the value of x-,y-,z-coordinate of the point or its index. String fnt may contain:
# See also plot, mark, textmark, table. Label sample
#
# @overload label(y,txt,fnt="",opt="")
#  @param [MglData] y 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload label(x,y,txt,fnt="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload label(x,y,z,txt,fnt="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
def label
end


# 1D plotting.
# These functions draw table with values of val and captions from string txt (separated by newline symbol '\n') at points (x, y) (default at (0,0)) related to current subplot. String fnt may contain:
# Option value set the width of the table (default is 1). See also plot, label. Table sample
#
# @overload table(val,txt,fnt="",opt="")
#  @param [MglData] val 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload table(x,y,val,txt,fnt="",opt="")
#  @param [Float] x 
#  @param [Float] y 
#  @param [MglData] val 
#  @param [String] txt 
#  @param [String] fnt default=""
#  @param [String] opt default=""
#  @return [nil]
def table
end


# 1D plotting.
# These functions draw the tube with variable radius r(i) along the curve between points (x(i), y(i), z(i)). See also plot. Tube sample
#
# @overload tube(y,r,pen="",opt="")
#  @param [MglData] y 
#  @param [MglData] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tube(y,r,pen="",opt="")
#  @param [MglData] y 
#  @param [Float] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tube(x,y,r,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tube(x,y,r,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [Float] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tube(x,y,z,r,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tube(x,y,z,r,pen="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [Float] r 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def tube
end


# 1D plotting.
# These functions draw surface which is result of curve (r, z) rotation around axis. If string pen contain symbols 'x' or 'z' then rotation axis will be set to specified direction (default is 'y'). If string pen have symbol '#' then wire plot is produced. If string pen have symbol '.' then plot by dots is produced. See also plot, axial. Torus sample
#
# @overload torus(r,z,pen="",opt="")
#  @param [MglData] r 
#  @param [MglData] z 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def torus
end


# 2D plotting.
# The function draws surface specified parametrically (x(i,j), y(i,j), z(i,j)). If string sch have symbol '#' then grid lines are drawn. If string sch have symbol '.' then plot by dots is produced. See also mesh, dens, belt, tile, boxs, surfc, surfa. Surf sample
#
# @overload surf(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf
end


# 2D plotting.
# The function draws mesh lines for surface specified parametrically (x(i,j), y(i,j), z(i,j)). See also surf, fall, meshnum, cont, tens. Mesh sample
#
# @overload mesh(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload mesh(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def mesh
end


# 2D plotting.
# The function draws fall lines for surface specified parametrically (x(i,j), y(i,j), z(i,j)). This plot can be used for plotting several curves shifted in depth one from another. If sch contain 'x' then lines are drawn along x-direction else (by default) lines are drawn along y-direction. See also belt, mesh, tens, meshnum. Fall sample
#
# @overload fall(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload fall(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def fall
end


# 2D plotting.
# The function draws belts for surface specified parametrically (x(i,j), y(i,j), z(i,j)). This plot can be used as 3d generalization of plot). If sch contain 'x' then belts are drawn along x-direction else (by default) belts are drawn along y-direction. See also fall, surf, plot, meshnum. Belt sample
#
# @overload belt(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload belt(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def belt
end


# 2D plotting.
# The function draws vertical boxes for surface specified parametrically (x(i,j), y(i,j), z(i,j)). Symbol '@' in sch set to draw filled boxes. See also surf, dens, tile, step. Boxs sample
#
# @overload boxs(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload boxs(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def boxs
end


# 2D plotting.
# The function draws horizontal tiles for surface specified parametrically (x(i,j), y(i,j), z(i,j)). Such plot can be used as 3d generalization of step. See also surf, boxs, step, tiles. Tile sample
#
# @overload tile(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tile(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def tile
end


# 2D plotting.
# The function draws density plot for surface specified parametrically (x(i,j), y(i,j), z(i,j)) at z equal to minimal z-axis value. If string sch have symbol '#' then grid lines are drawn. If string sch have symbol '.' then plot by dots is produced. See also surf, cont, contf, boxs, tile, dens(xyz). Dens sample
#
# @overload dens(z,sch="",opt="",zval=NAN)
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @param [Float] zval default=NAN
#  @return [nil]
#
# @overload dens(x,y,z,sch="",opt="",zval=NAN)
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @param [Float] zval default=NAN
#  @return [nil]
def dens
end


# 2D plotting.
# The function draws contour lines for surface specified parametrically (x(i,j), y(i,j), z(i,j)) at z=v(k), or at z equal to minimal z-axis value if sch contain symbol '_'. Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v. If string sch have symbol 't' or 'T' then contour labels v(k) will be drawn below (or above) the contours. See also dens, contf, contd, axial, cont(xyz). Cont sample
#
# @overload cont(v,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont(v,x,y,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont
end


# 2D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 7).
#
# @overload cont(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont
end


# 2D plotting.
# The function draws solid (or filled) contour lines for surface specified parametrically (x(i,j), y(i,j), z(i,j)) at z=v(k), or at z equal to minimal z-axis value if sch contain symbol '_'. Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v (must be v.nx>2). See also dens, cont, contd, contf(xyz). ContF sample
#
# @overload cont_f(v,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont_f(v,x,y,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont_f
end


# 2D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 7).
#
# @overload cont_f(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont_f(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont_f
end


# 2D plotting.
# The function draws solid (or filled) contour lines for surface specified parametrically (x(i,j), y(i,j), z(i,j)) at z=v(k) (or at z equal to minimal z-axis value if sch contain symbol '_') with manual colors. Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v (must be v.nx>2). String sch sets the contour colors: the color of k-th contour is determined by character sch(k%strlen(sch)). See also dens, cont, contf. ContD sample
#
# @overload cont_d(v,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont_d(v,x,y,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont_d
end


# 2D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 7).
#
# @overload cont_d(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont_d(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont_d
end


# 2D plotting.
# The function draws vertical cylinder (tube) at contour lines for surface specified parametrically (x(i,j), y(i,j), z(i,j)) at z=v(k), or at z equal to minimal z-axis value if sch contain symbol '_'. Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v. See also cont, contf. ContV sample
#
# @overload cont_v(v,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont_v(v,x,y,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont_v
end


# 2D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 7).
#
# @overload cont_v(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont_v(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cont_v
end


# 2D plotting.
# The function draws surface which is result of contour plot rotation for surface specified parametrically (x(i,j), y(i,j), z(i,j)). Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v. If string sch have symbol '#' then wire plot is produced. If string sch have symbol '.' then plot by dots is produced. If string contain symbols 'x' or 'z' then rotation axis will be set to specified direction (default is 'y'). See also cont, contf, torus, surf3. Axial sample
#
# @overload axial(v,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload axial(v,x,y,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def axial
end


# 2D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 3).
#
# @overload axial(z,sch="",opt="",num=3)
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @param [Integer] num default=3
#  @return [nil]
#
# @overload axial(x,y,z,sch="",opt="",num=3)
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @param [Integer] num default=3
#  @return [nil]
def axial
end


# 2D plotting.
# The function draws grid lines for density plot of surface specified parametrically (x(i,j), y(i,j), z(i,j)) at z equal to minimal z-axis value. See also dens, cont, contf, grid3, meshnum.
#
# @overload grid(z,sch="",opt="")
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload grid(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def grid
end


# 3D plotting.
# The function draws isosurface plot for 3d array specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)) at a(x,y,z)=val. If string contain '#' then wire plot is produced. If string sch have symbol '.' then plot by dots is produced. Note, that there is possibility of incorrect plotting due to uncertainty of cross-section defining if there are two or more isosurface intersections inside one cell. See also cloud, dens3, surf3c, surf3a, axial. Surf3 sample
#
# @overload surf3(val,a,sch="",opt="")
#  @param [Float] val 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf3(val,x,y,z,a,sch="",opt="")
#  @param [Float] val 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf3
end


# 3D plotting.
# Draws num-th uniformly distributed in color range isosurfaces for 3d data. Here num is equal to parameter value in options opt (default is 3).
#
# @overload surf3(a,sch="",opt="")
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf3(x,y,z,a,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf3
end


# 3D plotting.
# The function draws cloud plot for 3d data specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)). This plot is a set of cubes with color and transparency proportional to value of a. The resulting plot is like cloud -- low value is transparent but higher ones are not. The number of plotting cells depend on meshnum. If string sch contain symbol '.' then lower quality plot will produced with much low memory usage. If string sch contain symbol 'i' then transparency will be inversed, i.e. higher become transparent and lower become not transparent. See also surf3, meshnum. Cloud sample
#
# @overload cloud(a,sch="",opt="")
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cloud(x,y,z,a,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def cloud
end


# 3D plotting.
# The function draws density plot for 3d data specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)). Density is plotted at slice sVal in direction ('x', 'y', 'z') if sch contain corresponding symbol (by default, 'y' direction is used). If string stl have symbol '#' then grid lines are drawn. See also cont3, contf3, dens, grid3. Dens3 sample
#
# @overload dens3(a,sch="",sval=-1,opt="")
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload dens3(x,y,z,a,sch="",sval=-1,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def dens3
end


# 3D plotting.
# The function draws contour plot for 3d data specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)). Contours are plotted for values specified in array v at slice sVal in direction ('x', 'y', 'z') if sch contain corresponding symbol (by default, 'y' direction is used). If string sch have symbol '#' then grid lines are drawn. If string sch have symbol 't' or 'T' then contour labels will be drawn below (or above) the contours. See also dens3, contf3, cont, grid3. Cont3 sample
#
# @overload cont3(v,a,sch="",sval=-1,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont3(v,x,y,z,a,sch="",sval=-1,opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def cont3
end


# 3D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 7).
#
# @overload cont3(a,sch="",sval=-1,opt="",opt="")
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload cont3(x,y,z,a,sch="",sval=-1,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def cont3
end


# 3D plotting.
# The function draws solid (or filled) contour plot for 3d data specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)). Contours are plotted for values specified in array v at slice sVal in direction ('x', 'y', 'z') if sch contain corresponding symbol (by default, 'y' direction is used). If string sch have symbol '#' then grid lines are drawn. See also dens3, cont3, contf, grid3. ContF3 sample
#
# @overload contf3(v,a,sch="",sval=-1,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload contf3(v,x,y,z,a,sch="",sval=-1,opt="")
#  @param [MglData] v 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def contf3
end


# 3D plotting.
# The same as previous with vector v of num-th elements equidistantly distributed in color range. Here num is equal to parameter value in options opt (default is 7).
#
# @overload contf3(a,sch="",sval=-1,opt="",opt="")
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload contf3(x,y,z,a,sch="",sval=-1,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def contf3
end


# 3D plotting.
# The function draws grid for 3d data specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)). Grid is plotted at slice sVal in direction ('x', 'y', 'z') if sch contain corresponding symbol (by default, 'y' direction is used). See also cont3, contf3, dens3, grid2, meshnum.
#
# @overload grid3(a,sch="",sval=-1,opt="")
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload grid3(x,y,z,a,sch="",sval=-1,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def grid3
end


# 3D plotting.
# Draws the isosurface for 3d array a at constant values of a=val. This is special kind of plot for a specified in accompanied coordinates along curve tr with orts g1, g2 and with transverse scale r. Variable flag is bitwise: '0x1' - draw in accompanied (not laboratory) coordinates; '0x2' - draw projection to \rho-z plane; '0x4' - draw normalized in each slice field. The x-size of data arrays tr, g1, g2 must be nx>2. The y-size of data arrays tr, g1, g2 and z-size of the data array a must be equal. See also surf3.
#
# @overload beam(tr,g1,g2,a,r,stl="",flag=0,num=3)
#  @param [MglData] tr 
#  @param [MglData] g1 
#  @param [MglData] g2 
#  @param [MglData] a 
#  @param [Float] r 
#  @param [String] stl default=""
#  @param [Integer] flag default=0
#  @param [Integer] num default=3
#  @return [nil]
#
# @overload beam(val,tr,g1,g2,a,r,stl="",flag=0)
#  @param [Float] val 
#  @param [MglData] tr 
#  @param [MglData] g1 
#  @param [MglData] g2 
#  @param [MglData] a 
#  @param [Float] r 
#  @param [String] stl default=""
#  @param [Integer] flag default=0
#  @return [nil]
def beam
end


# Dual plotting.
# The function draws surface specified parametrically (x(i,j), y(i,j), z(i,j)) and color it by matrix c(i,j). If string sch have symbol '#' then grid lines are drawn. If string sch have symbol '.' then plot by dots is produced. All dimensions of arrays z and c must be equal. Surface is plotted for each z slice of the data. See also surf, surfa, surf3c. SurfC sample
#
# @overload surf_c(z,c,sch="",opt="")
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf_c(x,y,z,c,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf_c
end


# Dual plotting.
# The function draws isosurface plot for 3d array specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)) at a(x,y,z)=val. It is mostly the same as surf3 function but the color of isosurface depends on values of array c. If string sch contain '#' then wire plot is produced. If string sch have symbol '.' then plot by dots is produced. See also surf3, surfc, surf3a. Surf3C sample
#
# @overload surf_3c(val,a,c,sch="",opt="")
#  @param [Float] val 
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf_3c(val,x,y,z,a,c,sch="",opt="")
#  @param [Float] val 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf_3c
end


# Dual plotting.
# Draws num-th uniformly distributed in color range isosurfaces for 3d data. Here num is equal to parameter value in options opt (default is 3).
#
# @overload surf_3c(a,c,sch="",opt="")
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf_3c(x,y,z,a,c,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf_3c
end


# Dual plotting.
# The function draws surface specified parametrically (x(i,j), y(i,j), z(i,j)) and transparent it by matrix c(i,j). If string sch have symbol '#' then grid lines are drawn. If string sch have symbol '.' then plot by dots is produced. All dimensions of arrays z and c must be equal. Surface is plotted for each z slice of the data. See also surf, surfc, surf3a. SurfA sample
#
# @overload surf_a(z,c,sch="",opt="")
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf_a(x,y,z,c,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf_a
end


# Dual plotting.
# The function draws isosurface plot for 3d array specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)) at a(x,y,z)=val. It is mostly the same as surf3 function but the transparency of isosurface depends on values of array c. If string sch contain '#' then wire plot is produced. If string sch have symbol '.' then plot by dots is produced. See also surf3, surfc, surf3a. Surf3A sample
#
# @overload surf_3a(val,a,c,sch="",opt="")
#  @param [Float] val 
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf_3a(val,x,y,z,a,c,sch="",opt="")
#  @param [Float] val 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf_3a
end


# Dual plotting.
# Draws num-th uniformly distributed in color range isosurfaces for 3d data. At this array c can be vector with values of transparency and num=c.nx. In opposite case num is equal to parameter value in options opt (default is 3).
#
# @overload surf_3a(a,c,sch="",opt="")
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload surf_3a(x,y,z,a,c,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def surf_3a
end


# Dual plotting.
# The function draws horizontal tiles for surface specified parametrically (x(i,j), y(i,j), z(i,j)). It is mostly the same as tile but the size of tiles is determined by r array. This is some kind of ``transparency'' useful for exporting to EPS files. Tiles is plotted for each z slice of the data. See also surfa, tile. TileS sample
#
# @overload tile_s(z,c,sch="",opt="")
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tile_s(x,y,z,r,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] r 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def tile_s
end


# Dual plotting.
# The function draws mapping plot for matrices (ax, ay ) which parametrically depend on coordinates x, y. The initial position of the cell (point) is marked by color. Height is proportional to Jacobian(ax,ay). This plot is like Arnold diagram ??? If string sch contain symbol '.' then the color ball at matrix knots are drawn otherwise face is drawn. Mapping visualization
#
# @overload map(ax,ay,sch="",opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload map(x,y,ax,ay,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def map
end


# Dual plotting.
# Draws spectrogram of complex array re+i*im for Fourier size of dn points at plane z equal to minimal z-axis value. For example in 1D case, result is density plot of data res(i,j)=|\sum_d^dn exp(I*j*d)*(re(i*dn+d)+I*im(i*dn+d))|/dn with size (int(nx/dn), dn, ny). At this array re, im parametrically depend on coordinates x, y. The size of re and im must be the same. The minor dimensions of arrays x, y, re should be equal. Arrays x, y can be vectors (not matrix as re).  STFA sample
#
# @overload stfa(re,im,dn,sch="",opt="")
#  @param [MglData] re 
#  @param [MglData] im 
#  @param [Integer] dn 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload stfa(x,y,re,im,dn,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] re 
#  @param [MglData] im 
#  @param [Integer] dn 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def stfa
end


# Vector fields.
# The function draws vectors (ax, ay, az) along a curve (x, y, z). The length of arrows are proportional to \sqrt(ax^2+ay^2+az^2). String pen specifies the color (see Line styles). By default (pen="") color from palette is used (see Palette and colors). Option value set the vector length factor (if non-zero) or vector length to be proportional the distance between curve points (if value=0). The minor sizes of all arrays must be equal and large 2. The plots are drawn for each row if one of the data is the matrix. See also vect. Traj sample
#
# @overload traj(x,y,ax,ay,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload traj(x,y,z,ax,ay,az,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def traj
end


# Vector fields.
# The function draws plane vector field plot for the field (ax, ay) depending parametrically on coordinates x, y at level z equal to minimal z-axis value. The length and color of arrows are proportional to \sqrt(ax^2+ay^2). The number of arrows depend on meshnum. The appearance of the hachures (arrows) can be changed by symbols:
# See also flow, dew. Vect sample
#
# @overload vect(ax,ay,sch="",opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload vect(x,y,ax,ay,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def vect
end


# Vector fields.
# This is 3D version of the first functions. Here arrays ax, ay, az must be 3-ranged tensors with equal sizes and the length and color of arrows is proportional to \sqrt(ax^2+ay^2+az^2).
#
# @overload vect(ax,ay,az,sch="",opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload vect(x,y,z,ax,ay,az,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def vect
end


# Vector fields.
# The function draws 3D vector field plot for the field (ax, ay, az) depending parametrically on coordinates x, y, z. Vector field is drawn at slice sVal in direction ('x', 'y', 'z') if sch contain corresponding symbol (by default, 'y' direction is used). The length and color of arrows are proportional to \sqrt(ax^2+ay^2+az^2). The number of arrows depend on meshnum. The appearance of the hachures (arrows) can be changed by symbols:
# See also vect, flow, dew. Vect3 sample
#
# @overload vect3(ax,ay,az,sch="",sval=-1,opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload vect3(x,y,z,ax,ay,az,sch="",sval=-1,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [Float] sval default=-1
#  @param [String] opt default=""
#  @return [nil]
def vect3
end


# Vector fields.
# The function draws dew-drops for plane vector field (ax, ay) depending parametrically on coordinates x, y at level z equal to minimal z-axis value. Note that this is very expensive plot in memory usage and creation time! The color of drops is proportional to \sqrt(ax^2+ay^2). The number of drops depend on meshnum. See also vect. Dew sample
#
# @overload dew(ax,ay,sch="",opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload dew(x,y,ax,ay,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def dew
end


# Vector fields.
# The function draws flow threads for the plane vector field (ax, ay) parametrically depending on coordinates x, y at level z equal to minimal z-axis value. Number of threads is proportional to value option (default is 5). String sch may contain:
# See also pipe, vect, tape, barwidth. Flow sample
#
# @overload flow(ax,ay,sch="",opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload flow(x,y,ax,ay,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def flow
end


# Vector fields.
# This is 3D version of the first functions. Here arrays ax, ay, az must be 3-ranged tensors with equal sizes and the color of line is proportional to \sqrt(ax^2+ay^2+az^2).
#
# @overload flow(ax,ay,az,sch="",opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload flow(x,y,z,ax,ay,az,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def flow
end


# Vector fields.
# The same as first one (flow) but draws single flow thread starting from point p0=(x0,y0,z0).
#
# @overload flow_p(p0,ax,ay,sch="",opt="")
#  @param [MglPoint] p0 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload flow_p(p0,x,y,ax,ay,sch="",opt="")
#  @param [MglPoint] p0 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def flow_p
end


# Vector fields.
# This is 3D version of the previous functions.
#
# @overload flow_p(p0,ax,ay,az,sch="",opt="")
#  @param [MglPoint] p0 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload flow_p(p0,x,y,z,ax,ay,az,sch="",opt="")
#  @param [MglPoint] p0 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def flow_p
end


# Vector fields.
# The function draws gradient lines for scalar field phi(i,j) (or phi(i,j,k) in 3d case) specified parametrically (x(i,j,k), y(i,j,k), z(i,j,k)). Number of lines is proportional to value option (default is 5). See also dens, cont, flow.
#
# @overload grad(phi,sch="",opt="")
#  @param [MglData] phi 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload grad(x,y,phi,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] phi 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload grad(x,y,z,phi,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] phi 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def grad
end


# Vector fields.
# The function draws flow pipes for the plane vector field (ax, ay) parametrically depending on coordinates x, y at level z equal to minimal z-axis value. Number of pipes is proportional to value option (default is 5). If '#' symbol is specified then pipes start only from edges of axis range. The color of lines is proportional to \sqrt(ax^2+ay^2). Warm color corresponds to normal flow (like attractor). Cold one corresponds to inverse flow (like source). Parameter r0 set the base pipe radius. If r0<0 or symbol 'i' is specified then pipe radius is inverse proportional to amplitude. The vector field is plotted for each z slice of ax, ay. See also flow, vect. Pipe sample
#
# @overload pipe(ax,ay,sch="",r0=0.05,opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [Float] r0 default=0.05
#  @param [String] opt default=""
#  @return [nil]
#
# @overload pipe(x,y,ax,ay,sch="",r0=0.05,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [String] sch default=""
#  @param [Float] r0 default=0.05
#  @param [String] opt default=""
#  @return [nil]
def pipe
end


# Vector fields.
# This is 3D version of the first functions. Here arrays ax, ay, az must be 3-ranged tensors with equal sizes and the color of line is proportional to \sqrt(ax^2+ay^2+az^2).
#
# @overload pipe(ax,ay,az,sch="",r0=0.05,opt="")
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [Float] r0 default=0.05
#  @param [String] opt default=""
#  @return [nil]
#
# @overload pipe(x,y,z,ax,ay,az,sch="",r0=0.05,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] ax 
#  @param [MglData] ay 
#  @param [MglData] az 
#  @param [String] sch default=""
#  @param [Float] r0 default=0.05
#  @param [String] opt default=""
#  @return [nil]
def pipe
end


# Other plotting.
# These plotting functions draw density plot in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. See also ContXYZ, ContFXYZ, dens, Data manipulation. Dens projection sample
#
# @overload dens_x(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def dens_x
end


# Other plotting.
# These plotting functions draw density plot in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. See also ContXYZ, ContFXYZ, dens, Data manipulation. Dens projection sample
#
# @overload dens_y(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def dens_y
end


# Other plotting.
# These plotting functions draw density plot in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. See also ContXYZ, ContFXYZ, dens, Data manipulation. Dens projection sample
#
# @overload dens_z(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def dens_z
end


# Other plotting.
# These plotting functions draw contour lines in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. Option value set the number of contours. See also ContFXYZ, DensXYZ, cont, Data manipulation. Cont projection sample
#
# @overload cont_x(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_x
end


# Other plotting.
# These plotting functions draw contour lines in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. Option value set the number of contours. See also ContFXYZ, DensXYZ, cont, Data manipulation. Cont projection sample
#
# @overload cont_y(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_y
end


# Other plotting.
# These plotting functions draw contour lines in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. Option value set the number of contours. See also ContFXYZ, DensXYZ, cont, Data manipulation. Cont projection sample
#
# @overload cont_z(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_z
end


# Other plotting.
# The same as previous with manual contour levels.
#
# @overload cont_x(v,a,stl="",sval=NAN,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_x
end


# Other plotting.
# The same as previous with manual contour levels.
#
# @overload cont_y(v,a,stl="",sval=NAN,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_y
end


# Other plotting.
# The same as previous with manual contour levels.
#
# @overload cont_z(v,a,stl="",sval=NAN,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_z
end


# Other plotting.
# These plotting functions draw solid contours in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. Option value set the number of contours. See also ContFXYZ, DensXYZ, cont, Data manipulation. ContF projection sample
#
# @overload cont_fx(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_fx
end


# Other plotting.
# These plotting functions draw solid contours in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. Option value set the number of contours. See also ContFXYZ, DensXYZ, cont, Data manipulation. ContF projection sample
#
# @overload cont_fy(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_fy
end


# Other plotting.
# These plotting functions draw solid contours in x, y, or z plain. If a is a tensor (3-dimensional data) then interpolation to a given sVal is performed. These functions are useful for creating projections of the 3D data array to the bounding box. Option value set the number of contours. See also ContFXYZ, DensXYZ, cont, Data manipulation. ContF projection sample
#
# @overload cont_fz(a,stl="",sval=NAN,opt="")
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_fz
end


# Other plotting.
# The same as previous with manual contour levels.
#
# @overload cont_fx(v,a,stl="",sval=NAN,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_fx
end


# Other plotting.
# The same as previous with manual contour levels.
#
# @overload cont_fy(v,a,stl="",sval=NAN,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_fy
end


# Other plotting.
# The same as previous with manual contour levels.
#
# @overload cont_fz(v,a,stl="",sval=NAN,opt="")
#  @param [MglData] v 
#  @param [MglData] a 
#  @param [String] stl default=""
#  @param [Float] sval default=NAN
#  @param [String] opt default=""
#  @return [nil]
def cont_fz
end


# Other plotting.
# Draws command function 'y(x)' at plane z equal to minimal z-axis value, where 'x' variable is changed in xrange. You do not need to create the data arrays to plot it. Option value set initial number of points.  See also plot.
#
# @overload fplot(eqy,pen="",opt="")
#  @param [String] eqy 
#  @param [String] pen default=""
#  @param [String] opt default=""
#  @return [nil]
def fplot
end


# Other plotting.
# Draws command parametrical curve ('x(t)', 'y(t)', 'z(t)') where 't' variable is changed in range (0, 1). You do not need to create the data arrays to plot it. Option value set number of points. See also plot.
#
# @overload fplot(eqx,eqy,eqz,pen,opt="")
#  @param [String] eqx 
#  @param [String] eqy 
#  @param [String] eqz 
#  @param [String] pen 
#  @param [String] opt default=""
#  @return [nil]
def fplot
end


# Other plotting.
# Draws command surface for function 'z(x,y)' where 'x', 'y' variable are changed in xrange, yrange. You do not need to create the data arrays to plot it. Option value set number of points. See also surf.
#
# @overload fsurf(eqz,sch="",opt="")
#  @param [String] eqz 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def fsurf
end


# Other plotting.
# Draws command parametrical surface ('x(u,v)', 'y(u,v)', 'z(u,v)') where 'u', 'v' variable are changed in range (0, 1). You do not need to create the data arrays to plot it. Option value set number of points. See also surf.
#
# @overload fsurf(eqx,eqy,eqz,sch="",opt="")
#  @param [String] eqx 
#  @param [String] eqy 
#  @param [String] eqz 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def fsurf
end


# Other plotting.
# The function draws the surface of triangles. Triangle vertexes are set by indexes id of data points (x(i), y(i), z(i)). String sch sets the color scheme. If string contain '#' then wire plot is produced. First dimensions of id must be 3 or greater. Arrays x, y, z must have equal sizes. Parameter c set the colors of triangles (if id.ny=c.nx) or colors of vertexes (if x.nx=c.nx). See also dots, crust, quadplot, triangulation. TriPlot and QuadPlot
#
# @overload tri_plot(id,x,y,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tri_plot(id,x,y,z,c,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tri_plot(id,x,y,z,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def tri_plot
end


# Other plotting.
# The function draws contour lines for surface of triangles at z=v(k) (or at  z equal to minimal z-axis value if sch contain symbol '_'). Triangle vertexes are set by indexes id of data points (x(i), y(i), z(i)). Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v. If v is absent then arrays of option value elements  equidistantly distributed in color range is used. String sch sets the color scheme. Array c (if specified) is used for contour coloring. First dimensions of id must be 3 or greater. Arrays x, y, z must have equal sizes. Parameter c set the colors of triangles (if id.ny=c.nx) or colors of vertexes (if x.nx=c.nx). See also triplot, cont, triangulation.
#
# @overload tri_cont(id,x,y,z,c,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tri_cont(id,x,y,z,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def tri_cont
end


# Other plotting.
# The function draws contour lines for surface of triangles at z=v(k) (or at  z equal to minimal z-axis value if sch contain symbol '_'). Triangle vertexes are set by indexes id of data points (x(i), y(i), z(i)). Contours are plotted for z(i,j)=v(k) where v(k) are values of data array v. If v is absent then arrays of option value elements  equidistantly distributed in color range is used. String sch sets the color scheme. Array c (if specified) is used for contour coloring. First dimensions of id must be 3 or greater. Arrays x, y, z must have equal sizes. Parameter c set the colors of triangles (if id.ny=c.nx) or colors of vertexes (if x.nx=c.nx). See also triplot, cont, triangulation.
#
# @overload tri_cont_v(v,id,x,y,z,c,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload tri_cont_v(v,id,x,y,z,sch="",opt="")
#  @param [MglData] v 
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def tri_cont_v
end


# Other plotting.
# The function draws the surface of quadrangles. Quadrangles vertexes are set by indexes id of data points (x(i), y(i), z(i)). String sch sets the color scheme. If string contain '#' then wire plot is produced. First dimensions of id must be 4 or greater. Arrays x, y, z must have equal sizes. Parameter c set the colors of quadrangles (if id.ny=c.nx) or colors of vertexes (if x.nx=c.nx). See also triplot. TriPlot and QuadPlot
#
# @overload quad_plot(id,x,y,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload quad_plot(id,x,y,z,c,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload quad_plot(id,x,y,z,sch="",opt="")
#  @param [MglData] id 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def quad_plot
end


# Other plotting.
# The function draws the arbitrary placed points (x(i), y(i), z(i)). String sch sets the color scheme and kind of marks. If arrays c, a are specified then they define colors and transparencies of dots. You can use tens plot with style ' .' to draw non-transparent dots with specified colors. Arrays x, y, z, a must have equal sizes. See also crust, tens, mark, plot. Dots sample
#
# @overload dots(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload dots(x,y,z,a,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
#
# @overload dots(x,y,z,c,a,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] c 
#  @param [MglData] a 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def dots
end


# Other plotting.
# The function reconstruct and draws the surface for arbitrary placed points (x(i), y(i), z(i)). String sch sets the color scheme. If string contain '#' then wire plot is produced. Arrays x, y, z must have equal sizes. See also dots, triplot. @c Crust sample
#
# @overload crust(x,y,z,sch="",opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] sch default=""
#  @param [String] opt default=""
#  @return [nil]
def crust
end


# Nonlinear fitting.
# Fit data along x-, y- and z-directions for array specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)) with weight factor s(i,j,k).
#
# @overload fit_s(a,s,func,var,opt="")
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(a,s,func,var,ini,opt="")
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(x,a,s,func,var,opt="")
#  @param [MglData] x 
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(x,a,s,func,var,ini,opt="")
#  @param [MglData] x 
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(x,y,a,s,func,var,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(x,y,a,s,func,var,ini,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(x,y,z,a,s,func,var,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit_s(x,y,z,a,s,func,var,ini,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [MglData] s 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
def fit_s
end


# Nonlinear fitting.
# Fit data along x-, y- and z-directions for array specified parametrically a(i,j,k)(x(i,j,k), y(i,j,k), z(i,j,k)) with weight factor 1.
#
# @overload fit(a,func,var,opt="")
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(a,func,var,ini,opt="")
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(x,a,func,var,opt="")
#  @param [MglData] x 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(x,a,func,var,ini,opt="")
#  @param [MglData] x 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(x,y,a,func,var,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(x,y,a,func,var,ini,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(x,y,z,a,func,var,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit(x,y,z,a,func,var,ini,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
def fit
end


# Nonlinear fitting.
# Fit data along all directions for 2d or 3d arrays a with s=1 and x, y, z equidistantly distributed in axis range.
#
# @overload fit2(a,func,var,opt="")
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit2(fit,a,func,var,ini,opt="")
#  @param [MglData] fit 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
def fit2
end


# Nonlinear fitting.
# Fit data along all directions for 2d or 3d arrays a with s=1 and x, y, z equidistantly distributed in axis range.
#
# @overload fit3(fit,a,func,var,opt="")
#  @param [MglData] fit 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload fit3(fit,a,func,var,ini,opt="")
#  @param [MglData] fit 
#  @param [MglData] a 
#  @param [String] func 
#  @param [String] var 
#  @param [MglData] ini 
#  @param [String] opt default=""
#  @return [MglData]
def fit3
end


# Nonlinear fitting.
# Print last fitted formula with found coefficients (as numbers) at position p0. The string prefix will be printed before formula. All other parameters are the same as in Text printing.
#
# @overload puts_fit(p,prefix="",font="",size=-1)
#  @param [MglPoint] p 
#  @param [String] prefix default=""
#  @param [String] font default=""
#  @param [Float] size default=-1
#  @return [nil]
def puts_fit
end


# Nonlinear fitting.
# Get last fitted formula with found coefficients (as numbers).
#
# @overload get_fit()
#  @return [String]
def get_fit
end


# Nonlinear fitting.
# Get \chi for last fitted formula.
#
# @overload get_fit_chi()
#  @return [Float]
def get_fit_chi
end


# Data manipulation.
# These functions make distribution (histogram) of data. They do not draw the obtained data themselves. These functions can be useful if user have data defined for random points (for example, after PIC simulation) and he want to produce a plot which require regular data (defined on grid(s)). The range for grids is always selected as axis range. Arrays x, y, z define the positions (coordinates) of random points. Array a define the data value. Number of points in output array res  is defined by option value (default is mglFitPnts=100).
#
# @overload hist(x,a,opt="")
#  @param [MglData] x 
#  @param [MglData] a 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload hist(x,y,a,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] a 
#  @param [String] opt default=""
#  @return [MglData]
#
# @overload hist(x,y,z,a,opt="")
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] a 
#  @param [String] opt default=""
#  @return [MglData]
def hist
end


# Data manipulation.
# Fills the value of array 'u' according to the formula in string eq. Formula is an arbitrary expression depending  on variables 'x', 'y', 'z', 'u', 'v', 'w'. Coordinates 'x', 'y', 'z' are supposed to be normalized in axis range. Variable 'u' is the original value of the array. Variables 'v' and 'w' are values of arrays v, w which can be NULL (i.e. can be omitted).
#
# @overload fill(u,eq,opt="")
#  @param [MglData] u 
#  @param [String] eq 
#  @param [String] opt default=""
#  @return [nil]
#
# @overload fill(u,eq,v,opt="")
#  @param [MglData] u 
#  @param [String] eq 
#  @param [MglData] v 
#  @param [String] opt default=""
#  @return [nil]
#
# @overload fill(u,eq,v,w,opt="")
#  @param [MglData] u 
#  @param [String] eq 
#  @param [MglData] v 
#  @param [MglData] w 
#  @param [String] opt default=""
#  @return [nil]
def fill
end


# Data manipulation.
# Fills the value of array 'u' according to the linear interpolation of triangulated surface, found for arbitrary placed points 'x', 'y', 'z'. Interpolation is done at points equidistantly distributed in axis range. NAN value is used for grid points placed outside of triangulated surface. Making regular data
#
# @overload data_grid(u,x,y,z,opt="")
#  @param [MglData] u 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [String] opt default=""
#  @return [nil]
def data_grid
end


# Data manipulation.
# Solves equation du/dz = i*k0*ham(p,q,x,y,z,|u|)(u), where p=-i/k0*d/dx, q=-i/k0*d/dy are pseudo-differential operators. Parameters ini_re, ini_im specify real and imaginary part of initial field distribution. Coordinates 'x', 'y', 'z' are supposed to be normalized in axis range. Note, that really this ranges are increased by factor 3/2 for purpose of reducing reflection from boundaries. Parameter dz set the step along evolutionary coordinate z. At this moment, simplified form of function ham is supported -- all ``mixed'' terms (like 'x*p'->x*d/dx) are excluded. For example, in 2D case this function is effectively ham = f(p,z) + g(x,z,u). However commutable combinations (like 'x*q'->x*d/dy) are allowed. Here variable 'u' is used for field amplitude |u|. This allow one solve nonlinear problems -- for example, for nonlinear Shrodinger equation you may set ham="p^2 + q^2 - u^2". You may specify imaginary part for wave absorption, like ham = "p^2 + i*x*(x>0)", but only if dependence on variable 'i' is linear (i.e. ham = hre+i*him). PDE solving hints
#
# @overload pde(ham,ini_re,ini_im,dz=0.1,k0=100,opt="")
#  @param [String] ham 
#  @param [MglData] ini_re 
#  @param [MglData] ini_im 
#  @param [Float] dz default=0.1
#  @param [Float] k0 default=100
#  @param [String] opt default=""
#  @return [MglData]
def pde
end


end # MglGraph


# MglData class
class MglData

# Data manipulation.
# Fills by interpolated values of array v at the point (x, y, z)=(X(i), Y(j), Z(k)) (or (x, y, z)=(X(i,j,k), Y(i,j,k), Z(i,j,k)) if x, y, z are not 1d arrays), where X,Y,Z are equidistantly distributed in axis range and have the same sizes as array dat. If parameter sl is 0 or positive then changes will be applied only for slice sl.
#
# @overload refill(dat,x,v,sl=-1,opt="")
#  @param [MglData] dat 
#  @param [MglData] x 
#  @param [MglData] v 
#  @param [long] sl default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload refill(dat,x,y,v,sl=-1,opt="")
#  @param [MglData] dat 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] v 
#  @param [long] sl default=-1
#  @param [String] opt default=""
#  @return [nil]
#
# @overload refill(dat,x,y,z,v,opt="")
#  @param [MglData] dat 
#  @param [MglData] x 
#  @param [MglData] y 
#  @param [MglData] z 
#  @param [MglData] v 
#  @param [String] opt default=""
#  @return [nil]
def refill
end


end # MglData

end
