# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onstar/version'

Gem::Specification.new do |spec|
  spec.name          = "onstar-client"
  spec.version       = Onstar::VERSION
  spec.authors       = ["Jim Nanney"]
  spec.email         = ["jnanney@gmail.com"]
  spec.description   = %q{An onstar client to connect and send directions and get location data from onstar for a vehicle}
  spec.summary       = %q{Client to the onstar restful api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "oauth2"
  spec.add_dependency "rest-client"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
