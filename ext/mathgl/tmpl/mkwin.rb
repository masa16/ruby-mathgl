require "erb"

path = File.join(File.dirname($0),"win.erb.cxx")
low = ARGV[0]
up = low.upcase
has_run = !["glut"].include?(low)

erb = ERB.new(File.read(path))
erb.run(binding)
