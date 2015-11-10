# scripts

## Release scripts

Collection of scripts for managing open source projects.

- **package** Build a gem into `pkg` directory
- **release** Push a gem to rubygems.org. Depends on `package`
- **changelog** Generate a changelog from merge pull requests since the last tag using the [GitHub API](https://developer.github.com)

## Text utilities

- **remove_assert_nothing_raised.rb** minitest dropped this, this script removes it
