FROM ruby:2.6.5-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/testdouble/standardrb-action"
LABEL "version"="0.0.2"

COPY lib /action/lib
COPY README.md LICENSE /

RUN gem install bundler

ENTRYPOINT ["/action/lib/entrypoint.sh"]
