$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'capistrano/searchkick/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'capistrano-searchkick'
  s.version     = Capistrano::Searchkick::VERSION
  s.authors     = ['Piotr Kędziak']
  s.email       = ['piotr@kedziak.com']
  s.homepage    = 'https://github.com/piotr-kedziak/capistrano-searchkick'
  s.summary     = 'Run your Searchkick reindex:all task by Capistrano'
  s.description = 'Allows you to run searchkick:reindex:all task on your stages managed by Capistrano'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.require_paths = ['lib']

  s.add_dependency 'capistrano', '>= 3.9.0'
  s.add_dependency 'rails', '>= 4.0.0'
end
