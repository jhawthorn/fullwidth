# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fullwidth/version'

Gem::Specification.new do |spec|
  spec.name          = "fullwidth"
  spec.version       = Fullwidth::VERSION
  spec.authors       = ["John Hawthorn"]
  spec.email         = ["john.hawthorn@gmail.com"]
  spec.summary       = %q{Convert ASCII to equivalent ｆｕｌｌｗｉｄｔｈ characters.}
  spec.description   = %q{Convert ASCII to equivalent ｆｕｌｌｗｉｄｔｈ characters.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.2"
  spec.add_development_dependency "rake"
end
