# Mega Brain

[![CI](https://github.com/kaiquekandykoga/mega_brain/actions/workflows/ci.yml/badge.svg)](https://github.com/kaiquekandykoga/mega_brain/actions/workflows/ci.yml)

Mega Brain is an open source AI framework for building agentic systems in Ruby.

> **Status:** early development. The public API is not stable yet.

## Goals

- Plain Ruby objects for agents, tools, and memory
- Zero runtime dependencies
- Provider agnostic
- Test-driven and easy to extend

## Requirements

Ruby 3.3 or newer.

## Installation

Add the gem to your `Gemfile`:

```ruby
gem "mega_brain"
```

Then run:

```sh
bundle install
```

Or install it directly:

```sh
gem install mega_brain
```

## Usage

```ruby
require "mega_brain"

MegaBrain::VERSION
```

See [`doc/`](doc/README.md) for guides and architecture notes.

## Development

```sh
git clone https://github.com/kaiquekandykoga/mega_brain.git
cd mega_brain
bundle install
bundle exec rake
```

`bundle exec rake` runs the test suite (test-unit) and the linter (RuboCop). See [`doc/DEVELOPMENT.md`](doc/DEVELOPMENT.md) for details.

AI coding agents should read [`AGENTS.md`](AGENTS.md).

## Contributing

Bug reports and pull requests are welcome at <https://github.com/kaiquekandykoga/mega_brain>. See [`CONTRIBUTING.md`](CONTRIBUTING.md).

Please report security issues privately as described in [`SECURITY.md`](SECURITY.md).

## License

Released under the [BSD 3-Clause License](LICENSE).

## Author

Kaíque Kandy Koga
