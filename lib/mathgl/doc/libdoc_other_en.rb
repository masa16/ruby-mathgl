# This document is converted from other_en.texi.

# module MathGL
module MathGL

# MglColor class
class MglColor

# Sets color from values of Red, Green, Blue and Alpha channels. These values should be in interval (0,1).
#
# @overload set(r,g,b,a=1)
#  @param [Float] r 
#  @param [Float] g 
#  @param [Float] b 
#  @param [Float] a default=1
#  @return [nil]
def set
end


# Sets color as ``lighted'' version of color c.
#
# @overload set(c,bright=1)
#  @param [MglColor] c 
#  @param [Float] bright default=1
#  @return [nil]
def set
end


# Sets color from symbolic id.
#
# @overload set(p,bright=1)
#  @param [String] p 
#  @param [Float] bright default=1
#  @return [nil]
def set
end


# Checks correctness of the color.
#
# @overload valid()
#  @return [bool]
def valid
end


# Gets maximal of spectral component.
#
# @overload norm()
#  @return [Float]
def norm
end


# Adds colors by its RGB values.
#
# @overload +(b)
#  @param [MglColor] b 
#  @return [MglColor]
def +
end


# Subtracts colors by its RGB values.
#
# @overload -(b)
#  @param [MglColor] b 
#  @return [MglColor]
def -
end


# Multiplies color by number.
#
# @overload *(b)
#  @param [Float] b 
#  @return [MglColor]
def *
end


# Divide color by number.
#
# @overload /(b)
#  @param [Float] b 
#  @return [MglColor]
def /
end


end # MglColor


# MglPoint class
class MglPoint

# Returns true if point contain NAN values.
#
# @overload is_nan()
#  @return [bool]
def is_nan
end


# Returns the norm \sqrt(x^2+y^2+z^2) of vector.
#
# @overload norm()
#  @return [Float]
def norm
end


# Normalizes vector to be unit vector.
#
# @overload normalize()
#  @return [nil]
def normalize
end


# Returns point component: x for i=0, y for i=1, z for i=2, c for i=3.
#
# @overload val(i)
#  @param [Integer] i 
#  @return [Float]
def val
end


# Point of summation (summation of vectors).
#
# @overload +(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def +
end


# Point of difference (difference of vectors).
#
# @overload -(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def -
end


# Multiplies (scale) points by number.
#
# @overload *(b)
#  @param [Float] b 
#  @return [MglPoint]
def *
end


# Multiplies (scale) points by number 1/b.
#
# @overload /(b)
#  @param [Float] b 
#  @return [MglPoint]
def /
end


# Scalar product of vectors.
#
# @overload *(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def *
end


# Return vector of element-by-element product.
#
# @overload /(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def /
end


# Cross-product of vectors.
#
# @overload ^(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def ^
end


# The part of a which is perpendicular to vector b.
#
# @overload &(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def &
end


# The part of a which is parallel to vector b.
#
# @overload |(b)
#  @param [MglPoint] b 
#  @return [MglPoint]
def |
end


end # MglPoint

end
