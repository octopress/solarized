# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-solarized/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-solarized"
  spec.version       = Octopress::Solarized::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.description   = %q{Ethan Schoonover's solarized theme (with tweaks) for Octopress Ink.}
  spec.summary       = %q{Ethan Schoonover's solarized theme (with tweaks) for Octopress Ink.}
  spec.homepage      = "https://github.com/octopress/solarized"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "octopress-ink", "~> 1.0.0.rc.11"

  spec.add_development_dependency "pry-debugger"
  spec.add_development_dependency "autoprefixer-rails"
  spec.add_development_dependency "octopress"
  spec.add_development_dependency "octopress-code-highlighter"
  spec.add_development_dependency "octopress-codefence"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
