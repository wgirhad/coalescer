# frozen_string_literal: true

$LOAD_PATH.push(File.expand_path('lib', __dir__))

require 'coalescer'

Gem::Specification.new do |s|
  s.name        = 'coalescer'
  s.version     = Coalescer::VERSION
  s.summary     = 'Tired of doing `foo || foo.bar || foo.bar.baz`? Try this'
  s.description = 'Enables coalesce chaining values'
  s.authors     = ['Willian Girhad']
  s.email       = 'willianmonts@gmail.com'
  s.files       = Dir['lib/**/*', 'LICENSE', 'README.md']
  s.homepage    = 'https://github.com/wgirhad/coalescer'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.7'
  s.metadata['rubygems_mfa_required'] = 'true'
end
