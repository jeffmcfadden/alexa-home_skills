# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alexa/home_skills/version'

Gem::Specification.new do |spec|
  spec.name          = "alexa-home_skills"
  spec.version       = Alexa::HomeSkills::VERSION
  spec.authors       = ["Jeff McFadden"]
  spec.email         = ["jeff@forgeapps.com"]

  spec.summary       = %q{Ruby Gem for working with Amazon Alexa Home Skills API}
  spec.description   = %q{Handle incoming requests and create properly formatted responses with ease.}
  spec.homepage      = "https://github.com/jeffmcfadden/alexa-home_skills"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'https://rubygems.org'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
