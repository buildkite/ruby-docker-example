# Buildkite Ruby Docker Example

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This repository is an example on how to test a [Ruby](https://www.ruby-lang.org/en/) project using [Buildkite](https://buildkite.com/) and [Docker](https://docker.com/). It uses the standard [Ruby Docker image](https://hub.docker.com/_/ruby/) and [Buildkite’s Docker-based Builds](https://buildkite.com/docs/guides/docker-containerized-builds).

## Running locally

To run this locally:

```
$ docker-compose run app rspec --color specs
Building app
Step 1 : FROM ruby:2.1
 ---> e4920b48871c
Step 2 : RUN mkdir /app
 ---> Using cache
 ---> 41174643e51e
Step 3 : WORKDIR /app
 ---> Using cache
 ---> e090d3fb63e6
Step 4 : ADD Gemfile Gemfile.lock /app/
 ---> Using cache
 ---> 6e1831999c8c
Step 5 : RUN bundle install -j 8
 ---> Using cache
 ---> 6995ab4574ca
Step 6 : ADD . /app
 ---> cc8df46d2d0e
Removing intermediate container 6ec9b2c13ff3
Successfully built cc8df46d2d0e
.

Finished in 0.00101 seconds (files took 0.05301 seconds to load)
1 example, 0 failures
```

## License

See [Licence.md](Licence.md) (MIT)
