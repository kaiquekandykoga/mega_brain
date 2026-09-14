# AGENTS.md

Instructions for AI coding agents working on **Mega Brain**, an open source Ruby gem that provides an AI framework for building agentic systems.

`CLAUDE.md` is a symlink to this file. Edit `AGENTS.md` only.

## Role of the main agent

The main agent is an orchestrator. For every request:

1. **Understand** the request and read the relevant code, tests, and `doc/`.
2. **Plan** the change as a short, ordered list of steps. Each step names the failing test to write first, the code to change, and the documentation to update.
3. **Hand off** each step to the right sub-agent using the routing table below. Pass the plan step, the files involved, and the acceptance criteria.
4. **Verify** the result: `bundle exec rake` must pass (tests and lint).
5. **Report** what changed, what was verified, and anything left undone.

Do not implement changes directly when a matching sub-agent exists.

## Sub-agent routing

| Sub-agent | Definition | Hand off when |
|---|---|---|
| RUBY-ENGINEER | [`.claude/agents/RUBY-ENGINEER.md`](.claude/agents/RUBY-ENGINEER.md) | Any change to Ruby code: `lib/`, `test/`, `mega_brain.gemspec`, `Gemfile`, `Rakefile`, `.rubocop.yml` |

Documentation-only changes (`README.md`, `doc/`, `CHANGELOG.md`) and CI changes (`.github/`) may be done by the main agent.

When a new kind of work appears repeatedly, add a sub-agent definition under `.claude/agents/` and a row to this table.

## Non-negotiable rules

### Test-driven development

Every behavior change follows red, green, refactor:

1. **Red**: write a test in `test/` that describes the behavior and run it to see it fail for the expected reason.
2. **Green**: write the minimum code in `lib/` to make it pass.
3. **Refactor**: improve the design while the suite stays green.

No production code is written without a failing test first. Bug fixes start with a test that reproduces the bug.

### No comments in the codebase

Ruby files contain no comments. The only exception is the `# frozen_string_literal: true` magic comment, which is required as the first line of every Ruby file and enforced by RuboCop. Code explains itself through clear names, small methods, and tests. Explanations belong in `doc/`, `README.md`, commit messages, and pull request descriptions.

### Sensitive data is never committed or pushed

- Never commit API keys, tokens, passwords, private keys, certificates, `.env` files, or credentials of any kind.
- Read secrets from environment variables at runtime. Document the variable name, never the value.
- Tests use fake values such as `"test-api-key"` and never call real external services.
- Before every commit, review `git diff --staged` for secrets. If a secret is ever committed, stop, tell the user, and treat the secret as leaked so it gets rotated. Rewriting history is not enough.
- Keep `.gitignore` covering secret file patterns.

### Markdown file names are uppercase

Every Markdown file name is uppercase, with words separated by underscores, for example `README.md`, `CHANGELOG.md`, `doc/GETTING_STARTED.md`. Sub-agent definitions use the sub-agent name, for example `.claude/agents/RUBY-ENGINEER.md`. The `.md` extension stays lowercase. When renaming, update every link to the file.

### Minimal dependencies

The gem has zero runtime dependencies. Adding one requires a clear justification in the plan and user approval. Prefer the Ruby standard library.

## Project layout

```
lib/mega_brain.rb          entry point, requires everything under lib/mega_brain/
lib/mega_brain/            framework code, one constant per file
lib/mega_brain/version.rb  gem version
test/                      test-unit tests, files named *_test.rb
doc/                       project documentation, uppercase Markdown file names
.claude/agents/            sub-agent definitions
.github/workflows/ci.yml   tests and lint on every push and pull request
```

File paths mirror constants: `MegaBrain::Agent::Tool` lives in `lib/mega_brain/agent/tool.rb` and is tested in `test/mega_brain/agent/tool_test.rb`.

## Commands

```sh
bundle install          install dependencies
bundle exec rake test   run the test suite
bundle exec rake lint   run RuboCop
bundle exec rake        run tests and lint
```

## Definition of done

- Tests were written first and `bundle exec rake` passes.
- No comments were added to code, and every Ruby file starts with `# frozen_string_literal: true`.
- New Markdown files have uppercase names.
- No secrets are present in the diff.
- Public behavior changes are reflected in `doc/`, `README.md`, and `CHANGELOG.md`.
- Supported Ruby versions: 3.3, 3.4, 4.0.
