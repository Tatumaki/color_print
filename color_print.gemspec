# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'color_print/version'

Gem::Specification.new do |spec|
  spec.name          = "color_print"
  spec.version       = Color::VERSION
  spec.authors       = ["Tatumaki"]
  spec.email         = ["Tatumaki.x.euphoric@gmail.com"]
  spec.summary       = %q{Print strings with color you like.}
  spec.description   = %q{Put colored strings with ease and safe.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
