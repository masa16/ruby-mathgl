require "mkmf"

# configure options:
#  --with-mathgl-dir=path
#  --with-mathgl-include=path
#  --with-mathgl-lib=path

dir_config("mathgl")

#with_cppflags "-g -O0 -Wall"

exit unless have_header("mgl2/type.h")
exit unless have_header("mgl2/data.h")
exit unless have_header("mgl2/mgl.h")
exit unless have_header("mgl2/qt.h")
exit unless have_library("mgl")
exit unless have_library("mgl-qt")
$objs = ["qt.o"]
$CPPFLAGS.split.each{|x| $INCFLAGS+=" "+x if /^-I\S+$/=~x}
create_makefile("qt")
