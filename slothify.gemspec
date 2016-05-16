# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slothify/version'

Gem::Specification.new do |spec|
  spec.name           = "slothify"
  spec.version        = Slothify::VERSION
  spec.authors       = ["Kriselda Rabino"]
  spec.email         = ["kriselda.rabino@gmail.com"]

  spec.summary        = "Slothify all the strings!"
  spec.description    = "Slothify is a little String refinement that lets you express yourself a little slowerrrr"
  spec.homepage       = "http://rubygems.org/gems/slothify"
  spec.license        = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry", "~> 0.10.3"
end
