# Ruby/MathGL

Ruby wrapper of [MathGL](http://mathgl.sourceforge.net/), made using SWIG.

MathGL is a library for scientific data visualization developed by Alexey Balakin.

(This package is under construction.)

- [Plot Samples](https://github.com/masa16/ruby-mathgl-sample)
  ([Single page](https://github.com/masa16/ruby-mathgl-sample/blob/master/single_page/README.md))
- [API Document](http://masa16.github.io/ruby-mathgl/doc/frames.html)
- [GitHub](https://github.com/masa16/ruby-mathgl)
- [RubyGems](https://rubygems.org/gems/mathgl)

## Installation

1. Install MathGL2 library: http://mathgl.sourceforge.net/

2. Install Ruby/MathGL from source:

        ruby setup.rb config -- --with-mathgl-dir=/usr/local
        ruby setup.rb setup
        ruby setup.rb install

   Or install with gem:

        gem install mathgl -- --with-mathgl-dir=/usr/local

## Usage

Write a plot to PNG file:

    require 'mathgl'

    prc = proc{
      x = (0..100).map{|i| i*0.1}
      y = x.map{|i| Math.sin(i)}
      set_ranges(0,10,-1,1)
      box
      axis
      plot(x,y)
    }

    gr = MathGL::MglGraph.new
    gr.instance_eval(&prc)
    gr.write_png("test.png","",false)

Display a plot on Qt window:

    require 'mathgl'

    prc = proc{
      x = (0..100).map{|i| i*0.1}
      y = x.map{|i| Math.sin(i)}
      set_ranges(0,10,-1,1)
      box
      axis
      plot(x,y)
    }

    qt = MathGL::MglQT.new(&prc)
    qt.run

## Version

- MathGL 2.3.3
- Ruby 2.3.0
- CentOS 7.2

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
