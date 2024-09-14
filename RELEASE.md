# How to release an update

When cutting a new release, tag the versioned change and then move the current
major version.

For example, right now I'm Releasing v1.1.0, so I'm going to:

```sh
git tag v1.1.0
git push --tags
```

And then move the major tag:

```
git tag -fa v1 -m "Update v1 tag"
git push origin v1 --force
```
