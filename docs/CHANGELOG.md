# Changelog

## [Unreleased]

- Chore:
  - Add support for Ruby 3.2

## [0.1.0]

- Dependencies:
  - Update to yard [v0.9.27](https://github.com/lsegal/yard/releases/tag/v0.9.27)
    - Move from Redcarpet to CommonMarker markdown provider
    - Move doc syntax from Rdoc to markdown
  - Move dev dependencies from gemspec to gemfile
- Chore:
  - Add support for Ruby 3.1

## [0.0.6]

- bin: code simplification & lint
- lib: code lint
- repo: From from [Orange-Cyberdefense/rabid](https://github.com/Orange-Cyberdefense/rabid) to [noraj/rabid](https://github.com/noraj/rabid/)
- dependencies: update
- rubocop: new rules for new cops
- deprecation: now requires ruby 2.7+ instead of 2.4+

## [0.0.5]

- Fix a case when the encoded IP address in IPv4 pool members was decoded to an odd hexadecimal number resulting in a malformed IP address
- Fix the regexp for IPv4 pool members cookie were the encoded IP and port length was fix instead of variable
- Add more test for those cases

## [0.0.4]

- Fix regex in `auto_decode` and `retrieve_pool_name` for base64 encoded cookie (encrypted) - lazy quantifier instead of greedy one to match the first `=` sign

## [0.0.3]

- Update `commonmarker` dependency

## [0.0.2]

- Encrypted cookie detection

## [0.0.1]

- Initial version
