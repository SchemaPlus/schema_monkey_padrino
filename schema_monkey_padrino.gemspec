# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schema_monkey_padrino/version'

Gem::Specification.new do |spec|
  spec.name          = "schema_monkey_padrino"
  spec.version       = SchemaMonkey::Padrino::VERSION
  spec.authors       = ["ronen barzel", "John Feminella"]
  spec.email         = ["ronen@barzel.org", "jxf@jxf.me"]
  spec.summary       = %q{Inserts SchemaMonkey into a padrino app.}
  spec.homepage      = "https://github.com/SchemaPlus/schema_monkey_padrino"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 4.2"
  spec.add_dependency "padrino"
  spec.add_dependency "schema_monkey", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0.0"
  spec.add_development_dependency "schema_dev", "~> 3.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-gem-profile"
end
