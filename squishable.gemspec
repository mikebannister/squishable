$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "squishable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "squishable"
  s.version     = Squishable::VERSION
  s.authors     = ["Mike Bannister"]
  s.email       = ["mikebannister@gmail.com"]
  s.homepage    = "http://brainbicycle.net/blog/2011/10/03/create-a-rails-engine-with-rspec-and-capybara-tests/"
  s.summary     = "Code for Rails::Engine+RSpec+Capybara tutorial"
  s.description = "Code for Rails::Engine+RSpec+Capybara tutorial"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_development_dependency "rack", "1.3.3"
  s.add_development_dependency "rspec-rails", "~> 2.6.1"
  s.add_development_dependency "capybara", "~> 1.1.1"

  s.add_development_dependency "sqlite3"
end
