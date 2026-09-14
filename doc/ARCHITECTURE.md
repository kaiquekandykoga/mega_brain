# Architecture

Mega Brain is a framework for agentic systems: programs where a language model decides which actions to take, calls tools, observes results, and repeats until a goal is met.

## Principles

- **Plain Ruby**: framework concepts are ordinary Ruby objects that are easy to test and compose.
- **Zero runtime dependencies**: only the Ruby standard library is used.
- **Provider agnostic**: model providers plug in behind a small interface.
- **Explicit over magic**: dependencies are injected, never discovered globally.
- **Safe by default**: secrets come from the environment and are never logged.

## Namespace

All code lives under `MegaBrain`. File paths mirror constants.

| Constant | File | Purpose |
|---|---|---|
| `MegaBrain` | `lib/mega_brain.rb` | Entry point |
| `MegaBrain::VERSION` | `lib/mega_brain/version.rb` | Gem version |
| `MegaBrain::Error` | `lib/mega_brain.rb` | Base error class |

## Planned building blocks

These concepts guide upcoming work. They do not exist yet.

| Concept | Responsibility |
|---|---|
| Agent | Runs the reason, act, observe loop toward a goal |
| Tool | A named, described action an agent can call |
| Provider | Adapter to a language model API |
| Memory | Stores and retrieves conversation and task state |
| Orchestrator | Coordinates multiple agents and hands off work |

Each block will be designed test-first and documented here as it lands.
