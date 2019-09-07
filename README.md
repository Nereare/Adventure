# Adventure

[![Gem](https://img.shields.io/gem/v/Adventure)](https://github.com/Nereare/Adventure)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/Nereare/Adventure)](https://github.com/Nereare/Adventure/releases)
[![GitHub License](https://img.shields.io/github/license/Nereare/Adventure)](LICENSE.md)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE-OF-CONDUCT.md)
[![Build Status](https://travis-ci.org/Nereare/Adventure.svg?branch=master)](https://travis-ci.org/Nereare/Adventure)
[![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/Nereare/Adventure)](https://codeclimate.com/github/Nereare/Adventure)
[![Code Climate coverage](https://img.shields.io/codeclimate/coverage/Nereare/Adventure)](https://codeclimate.com/github/Nereare/Adventure)
[![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/Nereare/Adventure)](https://libraries.io/github/Nereare/Adventure)

A random adventure generator for D&D 5e.

## Running

1. Get [the code](https://github.com/Nereare/Adventure/archive/master.zip);
2. Have these installed:
    1. [Ruby](https://www.ruby-lang.org);
    2. [Gem](https://rubygems.org/).
3. Install [Bundler](https://bundler.io/) with `gem install bundler`;
4. Install the dependencies with `bundle install`;
5. Running not yet done, sorry... :cry:

### Testing

```shell
rubocop -a
bundle exec rspec spec
yardoc
```

These commands run the syntax checks (via [RuboCop](https://github.com/rubocop-hq/rubocop)), the [RSpec](https://rspec.info/) checks and outputs the documentation (via [YARD](https://yardoc.org/)).

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :tada:

Please, also read our [Contributing Guidelines](CONTRIBUTING.md).

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE-OF-CONDUCT.md). By participating in this project you agree to abide by its terms.

## History & Versioning

See the [Change Log](CHANGELOG.md) for further history.

This project uses [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/Nereare/Adventure/tags).

## Legal Stuff

[![MIT License](https://i.imgur.com/Ze3dFob.png)](LICENSE.md)

This project is available under the [MIT License](https://opensource.org/licenses/MIT)

[![d20 Logo](https://i.imgur.com/8CG0VEv.png)](OGL.md)

`d20 System` and the `d20 System` logo are trademarks of Wizards of the Coast, Inc. and are used according to the terms of the d20 System License. A copy of this License can be found at [www.wizards.com](https://dnd.wizards.com/articles/features/systems-reference-document-srd).
