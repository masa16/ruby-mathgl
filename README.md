# Mathgl

Ruby/MathGL : MathGL wrapper for Ruby made using SWIG

MathGL - library for scientific data visualization
http://mathgl.sourceforge.net/

(This package is under construction.)

## Installation

Install from source:

    ruby setup.rb config --prefix=$HOME/local -- --with-mathgl-dir=/usr/local
    ruby setup.rb setup
    ruby setup.rb install

Or install it yourself as:

    $ gem install mathgl -- --with-mathgl-dir=/usr/local

## Usage

Write to PNG

    require 'mathgl'

    prc = proc{
      x = (1..100).map{|i| i*0.1}
      y = x.map{|i| Math.sin(i)}
      set_ranges(0,10,-1,1)
      box
      axis
      plot(x,y)
    }

    gr = MathGL::MglGraph.new
    gr.instance_eval(&prc)
    gr.write_png("test.png","",false)

Qt window:

    require 'mathgl'
    require "mathgl/qt"

    prc = proc{
      x = (1..100).map{|i| i*0.1}
      y = x.map{|i| Math.sin(i)}
      set_ranges(0,10,-1,1)
      box
      axis
      plot(x,y)
    }

    qt = MathGL::MglQT.new(&prc)
    qt.run

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
