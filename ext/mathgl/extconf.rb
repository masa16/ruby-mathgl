require "mkmf"

# configure options:
#  --with-mathgl-dir=path
#  --with-mathgl-include=path
#  --with-mathgl-lib=path

dir_config("mathgl")
exit unless have_header("mgl2/type.h")
exit unless have_header("mgl2/data.h")
exit unless have_header("mgl2/mgl.h")
exit unless have_library("mgl")
$objs = ["mathgl.o"]
if have_header("mgl2/qt.h") && have_library("mgl-qt")
  $objs << "qt.o"
  $defs << "-DHAVE_QT"
end
if have_header("mgl2/fltk.h") && have_library("mgl-fltk")
  $objs << "fltk.o"
  $defs << "-DHAVE_FLTK"
end
if have_header("mgl2/glut.h") && have_library("mgl-glut")
  $objs << "glut.o"
  $defs << "-DHAVE_GLUT"
end
if File.exist?("mathgl.cxx")
  FileUtils.touch("mathgl.cxx")
end
$CPPFLAGS.split.each{|x| $INCFLAGS+=" "+x if /^-I\S+$/=~x}
create_makefile("mathgl")
