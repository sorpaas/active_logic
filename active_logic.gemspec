$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_logic/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_logic"
  s.version     = ActiveLogic::VERSION
  s.authors     = ["sorpa'as plat"]
  s.email       = ["sorpaas@gmail.com"]
  s.homepage    = "https://github.com/sorpaas/activelogic"
  s.summary     = "Active Logic for Ruby on Rails"
  s.description = "Rails Plugin for Convenient Business Logic"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "sqlite3"
end
