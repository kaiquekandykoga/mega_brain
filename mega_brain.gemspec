# frozen_string_literal: true

require_relative "lib/mega_brain/version"

Gem::Specification.new do |spec|
  spec.name = "mega_brain"
  spec.version = MegaBrain::VERSION
  spec.authors = ["Kaíque Kandy Koga"]
  spec.email = ["kaiquekandykoga@gmail.com"]

  spec.summary = "AI framework for building agentic systems in Ruby."
  spec.description = "Mega Brain is an open source Ruby framework for building agentic AI systems."
  spec.homepage = "https://github.com/kaiquekandykoga/mega_brain"
  spec.license = "BSD-3-Clause"
  spec.required_ruby_version = ">= 3.3"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "#{spec.homepage}/blob/master/CHANGELOG.md",
    "bug_tracker_uri" => "#{spec.homepage}/issues",
    "documentation_uri" => "#{spec.homepage}/tree/master/doc",
    "rubygems_mfa_required" => "true"
  }

  spec.files = Dir["lib/**/*.rb", "doc/**/*.md", "LICENSE", "README.md", "CHANGELOG.md"]
  spec.require_paths = ["lib"]
end
