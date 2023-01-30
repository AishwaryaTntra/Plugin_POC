require_relative "lib/accounts/version"

Gem::Specification.new do |spec|
  spec.name        = "accounts"
  spec.version     = Accounts::VERSION
  spec.authors     = ["AishwaryaTntra"]
  spec.email       = ["aishwarya.pakeyara@tntra.io"]
  spec.homepage    = "https://github.com/AishwaryaTntra/Plugin_POC"
  spec.summary     = "Summary of Accounts."
  spec.description = "Description of Accounts."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AishwaryaTntra/Plugin_POC"
  spec.metadata["changelog_uri"] = "https://github.com/AishwaryaTntra/Plugin_POC"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
end
