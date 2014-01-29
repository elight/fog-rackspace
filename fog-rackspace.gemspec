# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/rackspace/version'

Gem::Specification.new do |spec|
  spec.name          = "fog-rackspace"
  spec.version       = Fog::Rackspace::VERSION
  spec.authors       = ["Evan Light"]
  spec.email         = ["evan@tripledogdare.net"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "shindo"

  spec.add_runtime_dependency "fog-core", '~> 1.19.0'
end
