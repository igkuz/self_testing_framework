# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'self_testing_framework/version'

Gem::Specification.new do |gem|
  gem.name          = "self_testing_framework"
  gem.version       = SelfTestingFramework::VERSION
  gem.authors       = ["Igor Kuznetsov", "Mikhail Stolbov"]
  gem.email         = ["igkuznetsov@gmail.com", "mstolbov@gmail.com"]
  gem.description   = %q{This gem provides a self testing framework}
  gem.summary       = %q{This gem provides a self testing framework written for training. Useful for studing cases.}
  gem.homepage      = ""

  gem.add_runtime_dependency "active_support"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
