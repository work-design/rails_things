$:.push File.expand_path('lib', __dir__)
require 'rails_things/version'

Gem::Specification.new do |s|
  s.name = 'rails_things'
  s.version = RailsThings::VERSION
  s.authors = ['qinmingyuan']
  s.email = ['mingyuan0715@foxmail.com']
  s.homepage = 'https://github.com/work-design/rails_things'
  s.summary = 'Summary of RailsThings.'
  s.description = 'Description of RailsThings.'
  s.license = 'MIT'

  s.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md'
  ]

  s.add_dependency 'rails', '~> 6.0.0.beta1'
  s.add_dependency 'sqlite3'
end
