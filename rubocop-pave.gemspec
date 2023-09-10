# frozen_string_literal: true

require_relative 'lib/rubocop/pave/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-pave'
  spec.version = Rubocop::Pave::VERSION
  spec.authors = ['Team Pave']
  spec.email = ['edp@paveapp.com']

  spec.summary = 'Pave shared rubocop configs.'
  spec.homepage = 'https://github.com/teampave/rubocop-pave'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 1.36'
  spec.add_dependency 'rubocop-performance'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rspec', '~> 2.24'
end
