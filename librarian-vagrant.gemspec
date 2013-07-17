# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'librarian-vagrant/version'

Gem::Specification.new do |spec|
  spec.name          = 'librarian-vagrant'
  spec.version       = Librarian::Vagrant::VERSION
  spec.authors       = ['Erran Carey']
  spec.email         = ['me@errancarey.com']
  spec.description   = 'A bundler for your Vagrant plugins'
  spec.summary       = 'A bundler that for your Vagrant plugins that can be plugged into Vagrant via Vundler'
  spec.homepage      = 'https://github.com/ipwnstuff/librarian-vagrant'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'librarian'
end
