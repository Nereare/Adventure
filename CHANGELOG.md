# [Adventure](https://github.com/Nereare/Adventure) Change Log

This is the change log to Adventure. For further info on this project, see the [ReadMe file](README.md).

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [Semantic Versioning](http://semver.org/).

Principles of a change log, excerpted from [Keep a Changelog](http://keepachangelog.com/):

* It’s made for humans, not machines, so legibility is crucial.
* Easy to link to any section (hence Markdown over plain text).
* One sub-section per version.
* List releases in reverse-chronological order (newest on top).
* Write all dates in `YYYY-MM-DD` format. (Example: `2012-06-02` for `June 2nd, 2012`.) It’s international, [sensible](http://xkcd.com/1179/), and language-independent.
* Explicitly mention whether the project follows [Semantic Versioning](http://semver.org/).
* Each version should:
  * `List` its release date in the above format.
  * `Group` changes to describe their impact on the project, as follows:
    * `Added` for new features.
    * `Changed` for changes in existing functionality.
    * `Deprecated` for once-stable features removed in upcoming releases.
    * `Removed` for deprecated features removed in this release.
    * `Fixed` for any bug fixes.
    * `Security` to invite users to upgrade in case of vulnerabilities.

## [Unreleased]

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
  - [Random Name Generator](https://rubygems.org/gems/random_name_generator) gem, `v1.0.3`;
  - [Slugify](https://rubygems.org/gems/slugify/versions/1.0.6) gem, `v1.0.7`.
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
