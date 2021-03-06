# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbfmt/version'

Gem::Specification.new do |spec|
  spec.name          = "rbfmt"
  spec.version       = Rbfmt::VERSION
  spec.authors       = ["Jingwen Owen Ou"]
  spec.email         = ["jingweno@gmail.com"]
  spec.summary       = %q{Format your Ruby code.}
  spec.homepage      = "https://github.com/jingweno/rbfmt"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruby_parser"
  spec.add_runtime_dependency "ruby2ruby"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
