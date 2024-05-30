require_relative 'lib/hetzner_dns/version'

Gem::Specification.new do |spec|
  spec.name          = "hetzner_dns"
  spec.version       = HetznerDNS::VERSION
  spec.authors       = ["Dean Perry"]
  spec.email         = ["dean@deanpcmad.com"]

  spec.summary       = "A Ruby library for the HetznerDNS API"
  spec.homepage      = "https://deanpcmad.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/deanpcmad/hetzner_dns"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 2.0"
end
