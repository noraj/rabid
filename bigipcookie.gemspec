# frozen_string_literal: true

require_relative 'lib/bigipcookie/version'

Gem::Specification.new do |s|
  s.name          = 'rabid'
  s.version       = Version::VERSION
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'RApid Big IP Decoder'
  s.description   = 'A library and CLI tool allowing to decode all 4 types'\
                    ' of BigIP cookies'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@engineer.com'
  s.homepage      = 'https://noraj.github.io/rabid/'
  s.license       = 'MIT'

  s.files         = Dir['bin/*'] + Dir['lib/**/*.rb'] + ['LICENSE.txt']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.metadata = {
    'yard.run'          => 'yard',
    'bug_tracker_uri'   => 'https://github.com/noraj/rabid/issues',
    'changelog_uri'     => 'https://github.com/noraj/rabid/blob/master/docs/CHANGELOG.md',
    'documentation_uri' => 'https://noraj.github.io/rabid/',
    'homepage_uri'      => 'https://noraj.github.io/rabid/',
    'source_code_uri'   => 'https://github.com/noraj/rabid/'
  }

  s.required_ruby_version = ['>= 2.7.0', '< 3.1']

  s.add_runtime_dependency('docopt', '~> 0.6') # for argument parsing
  s.add_runtime_dependency('paint', '~> 2.2') # for colorized ouput

  s.add_development_dependency('bundler', '~> 2.1')
  s.add_development_dependency('commonmarker', '~> 0.21') # for GMF support in YARD
  s.add_development_dependency('github-markup', '~> 4.0') # for GMF support in YARD
  s.add_development_dependency('minitest', '~> 5.11')
  s.add_development_dependency('rake', '~> 13.0')
  s.add_development_dependency('redcarpet', '~> 3.4') # for GMF support in YARD
  s.add_development_dependency('rubocop', '~> 1.8')
  s.add_development_dependency('yard', '~> 0.9')
end
