# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adventure/version'

Gem::Specification.new do |spec|
  spec.name          = 'Adventure'
  spec.version       = Adventure.version
  spec.authors       = ['Igor Padoim']
  spec.email         = ['igorpadoim@gmail.com']

  spec.summary       = 'A random adventure generator for D&D 5e.'
  spec.homepage      = 'https://github.com/Nereare/Adventure'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/Nereare/Adventure/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been
  # added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'indefinite_article', '~> 0.2.4'
  spec.add_dependency 'random_name_generator', '~> 1.0.3'
  spec.add_dependency 'slugify', '~> 1.0.6'
end
