$:.push File.expand_path('../lib', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'juno-blog'
  s.version     = '0.0.1'
  s.summary     = 'The Juno blog.'
  s.description = 'The Juno blog.'

  s.required_ruby_version = '>= 2.0.0'

  s.author      = 'Jens Nockert'
  s.email       = 'jens@nockert.se'
  s.homepage    = 'http://aventine.se'
  s.licenses    = ['MIT']

  s.files = Dir['app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*'] + ['LICENSE', 'Rakefile']

  s.require_path = 'lib'

  s.add_dependency 'json', '>= 1.7.7'
  s.add_dependency 'rails', '~> 3.2.13'
  s.add_dependency 'rouge', '~> 0.3.7'
  s.add_dependency 'redcarpet', '~> 2.3.0'

  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'sqlite3'
end