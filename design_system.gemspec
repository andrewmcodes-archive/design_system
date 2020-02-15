$:.push File.expand_path("lib", __dir__)

require "design_system/version"

Gem::Specification.new do |spec|
  spec.platform = Gem::Platform::RUBY
  spec.name = "design_system"
  spec.version = DesignSystem::VERSION
  spec.summary = "Summary of DesignSystem."
  spec.description = "Description of DesignSystem."
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  spec.license = "MIT"
  spec.authors = ["Andrew Mason"]
  spec.email = ["andrewmcodes@protonmail.com"]
  spec.homepage = "https://github.com/andrewmcodes/design_system"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/andrewmcodes/design_system/issues",
    "source_code_uri" => "https://github.com/andrewmcodes/design_system",
    "homepage_uri" => spec.homepage,
  }

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_development_dependency "sqlite3"
end
