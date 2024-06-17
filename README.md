# ![image](https://github.com/standardrb/standard-ruby-action/assets/16904172/ed2d125f-26fd-45fb-a78f-c68c8bcbefed) Standard Ruby Action

A GitHub Action to run [StandardRB](https://github.com/standardrb/standard) against your code and create annotations in the GitHub UI.

## Usage

### Creating a Standard Ruby workflow:

To separate Standard Ruby linting and formatting from your main test suite, you
can add it in a standalone workflow:

```yaml
name: Standard Ruby

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      checks: write
      contents: write
    steps:
    - name: Standard Ruby
      uses: standardrb/standard-ruby-action@v1
```

### Adding to an existing workflow:

You can add the following to your existing GitHub Action workflow:

```yaml
- name: Standard Ruby
  uses: standardrb/standard-ruby-action@v1
```

This will require you to add these permissions at the top-level of your workflow
(for example, after specifying the operating system via `runs_on`):

```yaml
runs-on: ubuntu-latest
permissions:
  checks: write
  contents: read
```

## Options

There are no options.

## Screenshots

**[Update 6/17/2024: the current v1 release doesn't produce annotations like
this, unfortunately. See
[#16](https://github.com/standardrb/standard-ruby-action/issues/16)]**

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
