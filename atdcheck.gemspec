# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'atdcheck/version'

Gem::Specification.new do |spec|
  spec.name          = "atdcheck"
  spec.version       = Atdcheck::VERSION
  spec.authors       = ["Joseph Hallett"]
  spec.email         = ["bogwonch@bogwonch.net"]

  spec.summary       = %q{Terminal GUI for after the deadline}
  spec.description   = %q{Terminal GUI for after the deadline}
  spec.homepage      = "https://github.com/bogwonch/atdcheck"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'after_the_deadline', '~> 0.1.3'
  spec.add_runtime_dependency 'rainbow', '~> 2.2', '>= 2.2.1'
  spec.add_runtime_dependency 'pandoc-ruby'
end
