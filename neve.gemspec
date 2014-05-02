# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'neve'
  spec.version       = '0.1.0'
  spec.authors       = ['seenmyfate']
  spec.email         = ['seenmyfate@gmail.com']
  spec.summary       = %q{Friendly audio mixing, right on your command line}
  spec.description   = %q{Friendly audio mixing, right on your command line}
  spec.homepage      = 'https://github.com/seenmyfate/neve'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
