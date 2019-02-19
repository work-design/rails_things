$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_things/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rails_things"
  spec.version     = RailsThings::VERSION
  spec.authors     = ["qinmingyuan"]
  spec.email       = ["mingyuan0715@foxmail.com"]
  spec.homepage    = "TODO"
  spec.summary     = "TODO: Summary of RailsThings."
  spec.description = "TODO: Description of RailsThings."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0.beta1"

  spec.add_development_dependency "sqlite3"
end
