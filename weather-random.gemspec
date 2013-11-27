# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version.rb'

Gem::Specification.new do |spec|
  spec.name          = "weather-random"
  spec.version       = WeatherRandom::VERSION
  spec.authors       = ["Sameer Siruguri"]
  spec.email         = ["siruguri@gmail.com"]
  spec.description   = %q{This gem provides a class WeatherRandom that uses the WeatherUnderground API to generate a seed for a "T"RNG.}
  spec.summary       = %q{The gem requires you to have a Wunderground API key, which you have to supply to it in the initializations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'json'
  spec.add_development_dependency 'minitest'  
end
