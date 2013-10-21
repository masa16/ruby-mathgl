# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mathgl/version'

Gem::Specification.new do |spec|
  spec.name          = "mathgl"
  spec.version       = Mathgl::VERSION
  spec.authors       = ["Masahiro TANAKA"]
  spec.email         = ["masa16.tanaka@gmail.com"]
  spec.description   = %q{Ruby wrapper for MathGL - library for scientific data visualization}
  spec.summary       = %q{Ruby wrapper for MathGL - library for scientific data visualization}
  spec.homepage      = "https://github.com/masa16/ruby-mathgl"
  spec.license       = "LGPL"
  spec.extensions    = `git ls-files ext`.split($/).grep(/extconf/)

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
