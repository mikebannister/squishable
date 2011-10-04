$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "squishable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "squishable"
  s.version     = Squishable::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Squishable."
  s.description = "TODO: Description of Squishable."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_development_dependency "rack", "1.3.3"
  s.add_development_dependency "rspec-rails", "~> 2.6.1"
  s.add_development_dependency "capybara", "~> 1.1.1"

  s.add_development_dependency "sqlite3"
end
