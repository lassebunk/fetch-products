# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fetch/products/version'

Gem::Specification.new do |s|
  s.name          = "fetch-products"
  s.version       = Fetch::Products::VERSION
  s.authors       = ["Lasse Bunk"]
  s.email         = ["lassebunk@gmail.com"]
  s.summary       = %q{Coming}
  s.description   = %q{Coming}
  s.homepage      = "https://github.com/lassebunk/fetch-products"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^test/})
  s.require_paths = ["lib"]

  s.add_dependency "fetch"
  s.add_development_dependency "sqlite3"
end
