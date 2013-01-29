# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dianping/version'

Gem::Specification.new do |gem|
  gem.name          = "dianping"
  gem.version       = Dianping::VERSION
  gem.authors       = ["Andersen Fan"]
  gem.email         = ["as181920@hotmail.com"]
  gem.description   = %q{dianping.com api wrapper}
  gem.summary       = %q{dianping.com api wrapper}
  gem.homepage      = "https://github.com/as181920/dianping"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "httparty"

  gem.add_development_dependency "guard-minitest"
  gem.add_development_dependency "rb-inotify"

end
