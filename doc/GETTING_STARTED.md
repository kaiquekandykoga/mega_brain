# Getting Started

## Install

```ruby
gem "mega_brain"
```

```sh
bundle install
```

## Load the framework

```ruby
require "mega_brain"

puts MegaBrain::VERSION
```

## Handling errors

Every error raised by Mega Brain inherits from `MegaBrain::Error`, so one rescue covers the framework:

```ruby
begin
  do_agent_work
rescue MegaBrain::Error => e
  warn e.message
end
```

## Credentials

Mega Brain never stores credentials. Provide API keys through environment variables and keep them out of version control:

```sh
export PROVIDER_API_KEY="..."
```

Never commit `.env` files or keys.
