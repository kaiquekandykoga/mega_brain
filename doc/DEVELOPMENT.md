# Development

## Setup

```sh
bundle install
```

## Tasks

| Command | Description |
|---|---|
| `bundle exec rake test` | Run the test-unit suite |
| `bundle exec rake lint` | Run RuboCop |
| `bundle exec rake` | Run tests and lint |
| `bundle exec ruby -Itest test/mega_brain_test.rb` | Run a single test file |

## Workflow

Development is test-driven:

1. Write a failing test in `test/`.
2. Write the minimum code in `lib/` to pass it.
3. Refactor while the suite stays green.

## Conventions

- No comments in Ruby files. Explanations belong in `doc/`.
- One constant per file, paths mirror constants.
- Test files are named `*_test.rb` and mirror `lib/` paths.
- Markdown file names are uppercase, for example `doc/GETTING_STARTED.md`.
- No runtime dependencies without discussion.
- Tests never touch the network or real credentials.

## Secrets

Never commit API keys, tokens, `.env` files, or private keys. `.gitignore` covers common secret files, but always review `git diff --staged` before committing.

## Continuous integration

GitHub Actions runs tests on Ruby 3.3, 3.4, and 4.0 and runs RuboCop on every push to `master` and every pull request. See `.github/workflows/ci.yml`.

## AI agents

`AGENTS.md` defines how AI coding agents plan work and hand it off to sub-agents in `.claude/agents/`. `CLAUDE.md` is a symlink to it.
