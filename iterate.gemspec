# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/iterate/version"

Gem::Specification.new do |gem|
  gem.name          = "iterate"
  gem.version       = Iterate::VERSION
  gem.summary       = "Iterate over one or more collections."
  gem.description   = "Iterate over one or more collections. It feels like an .each implemented as a control structure. It also makes it easier to iterate over multiple objects."
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/iterate"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.0"
end
