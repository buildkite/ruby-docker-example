# Buildkite Ruby Docker Example

[![Build status](https://badge.buildkite.com/aab023f2f33ab06766ed6236bc40caf0df1d9448e4f590d0ee.svg?branch=main)](https://buildkite.com/buildkite/ruby-docker-example/builds/latest?branch=main)
[![Add to Buildkite](https://img.shields.io/badge/Add%20to%20Buildkite-14CC80)](https://buildkite.com/new)

This repository is an example [Buildkite](https://buildkite.com/) pipeline that demonstrates how to test a [Ruby](https://www.ruby-lang.org/en/) project using [Docker](https://docker.com/).

👉 **See this example in action:** [buildkite/ruby-docker-example](https://buildkite.com/buildkite/ruby-docker-example/builds/latest?branch=main)

See the full [Getting Started Guide](https://buildkite.com/docs/guides/getting-started) for step-by-step instructions on how to get this running, or try it yourself:

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

<a href="https://buildkite.com/buildkite/ruby-docker-example/builds/latest?branch=main">
  <img width="2400" alt="Screenshot of example pipeline build page" src=".buildkite/screenshot.png" />
</a>

<!-- docs:start -->

## How it works

This example:
- Uses the [Ruby Docker image](https://hub.docker.com/_/ruby/)
- Defines a [Docker Compose](https://docs.docker.com/compose/) service to run tests
- Uses a simple RSpec test suite for demonstration

Key files:
- [`Dockerfile`](Dockerfile) – defines the Ruby environment
- [`docker-compose.yml`](docker-compose.yml) – defines the app service
- [`pipeline.yml`](.buildkite/pipeline.yml) – uploads the pipeline

<!-- docs:end -->

## License

See [LICENSE.md](LICENSE.md) (MIT)
