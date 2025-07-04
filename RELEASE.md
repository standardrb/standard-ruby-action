# How to release an update

1. Ensure the [changelog][] is current.
2. Create a tag (signed, preferably) in the form "v1.2.3".
3. Push the tag.
4. Monitor the [release jobs][].
    - The [release workflow][] creates a [GitHub Release][] for the pushed tag.
    - The Release publishes the action to [GitHub Marketplace][].
    - The release workflow also advances the corresponding [major version ref][].

```console
git tag -s v1.2.3
git push --tags
```

[changelog]: ./CHANGELOG.md
[release workflow]: .github/workflows/release.yml
[github release]: https://github.com/standardrb/standard-ruby-action/releases
[release jobs]: https://github.com/standardrb/standard-ruby-action/actions/workflows/release.yml
[github marketplace]: https://github.com/marketplace/actions/standard-ruby-linter
[major version ref]: https://github.com/standardrb/standard-ruby-action/branches/all?query=v
