# Buildkite Ruby Docker Example

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This repository is an example on how to test a [Ruby](https://www.ruby-lang.org/en/) project using [Buildkite](https://buildkite.com/) and [Docker](https://docker.com/). It uses the standard [Ruby Docker image](https://hub.docker.com/_/ruby/) and [Buildkite’s Docker-based Builds](https://buildkite.com/docs/guides/docker-containerized-builds).

## Running locally

To run this locally:

```
$ docker-compose run app rspec --color specs
Building app
Step 1/6 : FROM ruby:2.7
 ---> fb53c5f433da
Step 2/6 : RUN mkdir /app
 ---> Using cache
 ---> 0d79a968fbbb
Step 3/6 : WORKDIR /app
 ---> Using cache
 ---> 20faa284ae78
Step 4/6 : ADD Gemfile Gemfile.lock /app/
 ---> 050ec65cce16
Step 5/6 : RUN bundle install -j 8
 ---> Running in 3102f1bf36cd
Fetching gem metadata from https://rubygems.org/..........
Using bundler 2.1.2
Fetching rspec-support 3.4.1
Fetching diff-lcs 1.2.5
Installing diff-lcs 1.2.5
Installing rspec-support 3.4.1
Fetching rspec-expectations 3.4.0
Fetching rspec-mocks 3.4.1
Fetching rspec-core 3.4.2
Installing rspec-core 3.4.2
Installing rspec-expectations 3.4.0
Installing rspec-mocks 3.4.1
Fetching rspec 3.4.0
Installing rspec 3.4.0
Bundle complete! 1 Gemfile dependency, 7 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
Removing intermediate container 3102f1bf36cd
 ---> 417ad2370e72
Step 6/6 : ADD . /app
 ---> 593b562046e7
Successfully built 593b562046e7
Successfully tagged ruby-docker-example_app:latest
WARNING: Image for service app was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
.

Finished in 0.00044 seconds (files took 0.05898 seconds to load)
1 example, 0 failures
```

## License

See [Licence.md](Licence.md) (MIT)
