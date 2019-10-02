# [Adventure](https://github.com/Nereare/Adventure) Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.17.7-pre] - `2019-09-10`

### Added
* Code of Conduct from [Contributor Covenant v1.4.1](https://www.contributor-covenant.org/).
* [License](LICENSE.md).
* Git metafiles (`.gitignore` and `.gitattributes`).
* GitHub templates:
  - Issues;
  - Feature request;
  - User question;
  - Pull request.
* ReadMe file.
* Changelog file.
* Begin gem folder structure, using [Bundler](https://bundler.io/) `v2.0.2`.
* Development dependencies:
  - [Bundler](https://bundler.io/), `v2.0.2`;
  - [Rake](https://github.com/ruby/rake), `v10.5.0`;
  - [RSpec](https://rspec.info/), `v3.8.0`;
  - [RuboCop](https://github.com/rubocop-hq/rubocop), `v0.74.0`;
  - [SimpleCov](https://github.com/colszowka/simplecov), `v0.17.0`;
  - [YARD](https://rubygems.org/gems/yard), `v0.9.20`.
* Dependencies:
  - [Indefinite Article](https://rubygems.org/gems/indefinite_article) gem, `v0.2.4`;
  - [Jekyll Slugify](https://rubygems.org/gems/jekyll_slugify) gem, `v0.4.2`;
  - [Random Name Generator](https://rubygems.org/gems/random_name_generator) gem, `v1.0.3`.
* Modules:
  - Base module (`Adventure`):
    - `Actor` class, for creating NPC descriptions;
    - `Building` class, for creating general buildings, such as houses;
    - `Dungeon` class, which creates a dungeon to serve as a category to `Room`s;
    - `Encounter` class, which creates the elements of a singleton encounter;
    - `Quest` class, for creating quests, their goals and rewards;
    - `Room` class, for creating steps of a dungeon or encounter arc;
    - `Settlement` class, for creating settlements and their contents.

### Changed
* Name generator from homebrewed adaptation of `marky_markov`'s code to `random_name_generator` gem.

### Removed
* Former base module, defining some d20 system entities;
* `Armors` module, defining SRD armors;
* `Weapons` module, defining SRD armors.

### Fixed
* `Slugify` method, previously from an unlicensed gem to an [MIT-licensed one](https://rubygems.org/gems/jekyll_slugify).

[Unreleased]: https://github.com/Nereare/Adventure/compare/v0.17.7-pre...HEAD
[0.17.7-pre]: https://github.com/Nereare/Adventure/releases/tag/v0.17.7-pre
