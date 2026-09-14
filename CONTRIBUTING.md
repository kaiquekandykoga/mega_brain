# Contributing

Thanks for helping improve Mega Brain.

1. Fork the repository and create a branch from `master`.
2. Run `bundle install`.
3. Write a failing test first, then the code that makes it pass.
4. Run `bundle exec rake` and make sure tests and lint pass.
5. Update `doc/`, `README.md`, and `CHANGELOG.md` when behavior changes.
6. Open a pull request describing the change.

## Rules

- Every Ruby file starts with `# frozen_string_literal: true`. No other comments in Ruby code.
- No new runtime dependencies without prior discussion in an issue.
- Never include secrets, API keys, or credentials in commits, tests, or issues.

See [`doc/DEVELOPMENT.md`](doc/DEVELOPMENT.md) for more details.
