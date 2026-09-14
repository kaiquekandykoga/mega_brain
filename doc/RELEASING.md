# Releasing

1. Update `MegaBrain::VERSION` in `lib/mega_brain/version.rb` following [Semantic Versioning](https://semver.org).
2. Move entries under `Unreleased` in `CHANGELOG.md` to the new version.
3. Run `bundle install` and `bundle exec rake`.
4. Commit the changes.
5. Run `bundle exec rake release` to tag, push, and publish to RubyGems.

Publishing requires multi-factor authentication on RubyGems. Never commit `~/.gem/credentials` or API keys.
