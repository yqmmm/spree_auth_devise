# encoding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_auth_devise'
  s.version     = '4.2.0'
  s.summary     = 'Provides authentication and authorization services for use with Spree by using Devise and CanCan.'
  s.description = s.summary

  s.required_ruby_version = '>= 2.5.0'

  s.author      = 'Sean Schofield'
  s.email       = 'sean@spreecommerce.com'
  s.homepage    = 'https://spreecommerce.org'
  s.license     = 'BSD-3-Clause'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'deface', '~> 1.0'

  s.add_dependency 'devise', '~> 4.7'
  s.add_dependency 'devise-encryptable', '0.2.0'

  spree_version = '>= 4.1', '< 5.0'
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'spree_dev_tools'
end
