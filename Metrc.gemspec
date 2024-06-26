# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Metrc/version'

Gem::Specification.new do |spec|
  spec.name          = 'Metrc'
  spec.version       = Metrc::VERSION
  spec.authors       = ['Emanuele Tozzato']
  spec.email         = ['etozzato@gmail.com']

  spec.summary       = 'Pull and push lab data between a LIMS and Metrc'
  spec.description   = 'A ruby gem to pull lab tests and push results to Metrc'
  spec.homepage      = 'https://www.cannabisLIMS.com/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'bundler', '~> 2.5'
  spec.add_dependency 'httparty'
  spec.add_dependency 'rake', '~> 13.2.0'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
end
