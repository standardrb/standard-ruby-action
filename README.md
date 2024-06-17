# ![image](https://github.com/standardrb/standard-ruby-action/assets/16904172/ed2d125f-26fd-45fb-a78f-c68c8bcbefed) Standard Ruby Action

A GitHub Action to run [StandardRB](https://github.com/standardrb/standard) against your code and create annotations in the GitHub UI.

**[Status as of 6/17/2024: it's possible that the workflow may not work for most (or all) users. We're investigating.]**

## Usage

### Creating a Standard Ruby workflow:

To separate Standard Ruby linting and formatting from your main test suite, you
can add it in a standalone workflow:

```yaml
```yaml
name: Standard Ruby

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - name: Standard Ruby
      uses: standardrb/standard-ruby-action@v0.0.5
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        USE_BUNDLE_VERSION: true
```

### Adding to an existing workflow:

You can add the following to your existing GitHub Action workflow:

```yaml
- name: Standard Ruby
  uses: standardrb/standard-ruby-action@v0.0.5
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    USE_BUNDLE_VERSION: true
```

This will require you to add these permissions (after specifying the operating system via `runs_on`):

```yaml
runs-on: ubuntu-latest
permissions:
  checks: write
  contents: read
```

## Options

These can be set under `env:` in the Standard Ruby action step.

If you've installed the `standard` gem to your project with Bundler, then you
probably want to run the same version in this action. Under the action, set:

```yaml
USE_BUNDLE_VERSION: true
```

Omitting this value or setting it to anything else will instead execute
`gem install standard` and run the latest version of Standard Ruby.

## Screenshots

![StandardRB Action Checks Overview](screenshots/check-overview.png)
![StandardRB Action File Annotation](screenshots/file-annotation.png)

## Code of Conduct

This project follows Test Double's [code of
conduct](https://testdouble.com/code-of-conduct) for all community interactions,
including (but not limited to) one-on-one communications, public posts/comments,
code reviews, pull requests, and GitHub issues. If violations occur, Test Double
will take any action they deem appropriate for the infraction, up to and
including blocking a user from the organization's repositories.

## Acknowledgements

A big thanks to [Andrew Mason](https://github.com/andrewmcodes) for kicking off
this project as
[andrewmcodes/standardrb-acction](https://github.com/andrewmcodes/standardrb-action)!
