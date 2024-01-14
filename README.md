# ![image](https://github.com/standardrb/standard-ruby-action/assets/16904172/ed2d125f-26fd-45fb-a78f-c68c8bcbefed) Standard Ruby Action

A GitHub Action to run [StandardRB](https://github.com/standardrb/standard) against your code and create annotations in the GitHub UI.

- [:white\_check\_mark: Standard Ruby Action](#white_check_mark-standard-ruby-action)
  - [:page\_facing\_up: Introduction](#page_facing_up-introduction)
  - [:bulb: Usage](#bulb-usage)
    - [:package: Example Workflow](#package-example-workflow)
  - [:warning: Gotchas](#warning-gotchas)
  - [:camera\_flash: Screenshots](#camera_flash-screenshots)
  - [:bookmark: Changelog](#bookmark-changelog)
  - [:sos: Contributing](#sos-contributing)
  - [:rotating\_light: Code of Conduct](#rotating_light-code-of-conduct)
  - [✨ Contributors](#-contributors)

## :page_facing_up: Introduction

GitHub Actions are an amazing new tool that can dramatically improve productivity while using the GitHub platform. While it is not hard to write a custom GitHub action to run StandardRB on your codebase, this action takes that functionality one step further using the checks API. After the StandardRB Linter Action runs StandardRB against your code, it will create annotations that you can easily view, matched up with the offending code.

Since GitHub actions and the checks API are continually changing, it is possible that there will be breaking API changes that affect this action. If so, please open an issue and I will look into it as soon as I can.

## :bulb: Usage

Here is an example Actions workflow which incorporates the StandardRB linter action:

```yaml
name: StandardRB

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v4
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    - name: Set up Ruby
      uses: ruby/setup-ruby@v1
      with:
        bundler-cache: true
    - name: Lint with StandardRB
      uses: standardrb/standard-ruby-action@v1
      with:
        use-bundler: true # default, not necessary to specify
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## :warning: Gotchas

Due to the GitHub Check Runs API, we can only return 50 annotations per run. See [here](https://developer.github.com/v3/checks/runs/#output-object) for more info.

## :camera_flash: Screenshots

![StandardRB Action Checks Overview](screenshots/check-overview.png)
![StandardRB Action File Annotation](screenshots/file-annotation.png)

## :bookmark: Changelog

[View our Changelog](/CHANGELOG.md)

## :sos: Contributing

[Contributing Guide](/CONTRIBUTING.md)

## :rotating_light: Code of Conduct

This project follows Test Double's [code of
conduct](https://testdouble.com/code-of-conduct) for all community interactions,
including (but not limited to) one-on-one communications, public posts/comments,
code reviews, pull requests, and GitHub issues. If violations occur, Test Double
will take any action they deem appropriate for the infraction, up to and
including blocking a user from the organization's repositories.

## ✨ Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/andrewmcodes/"><img src="https://avatars1.githubusercontent.com/u/18423853?v=4" width="100px;" alt="Andrew Mason"/><br /><sub><b>Andrew Mason</b></sub></a><br /><a href="#infra-andrewmcodes" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/andrewmcodes/standardrb-action/commits?author=andrewmcodes" title="Documentation">📖</a> <a href="https://github.com/andrewmcodes/standardrb-action/commits?author=andrewmcodes" title="Code">💻</a></td>
  </tr>
</table>

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
