#!/bin/sh

set -e

CMD="standardrb --parallel -f github"

cd "$GITHUB_WORKSPACE"

if [ "$USE_BUNDLE_VERSION" = "true" ]; then
  echo "[info] using bundled version"
  bundle install
  CMD="bundle exec $CMD"
else
  echo "[info] using current version"
  gem install standard
fi

echo "[info] running standard as '$CMD'"
eval "$CMD"
