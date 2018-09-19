# cci-ruby-qt Docker image

**Image name:** [skillsmatter/cci-ruby-qt][docker_image]

This image is used by Skillsmatter's Circle CI 2 test instances to create an 'empty' container with support for Ruby 2.3.x, Node.js (v8.x) and headless browsers for testing.

It is based upon Circle CI's core image, but also installs Qt5.5 for use in testing.

The image also includes the necessary drivers for [Redis][redis] and [PostgreSQL][postgresql] enabling Rails applications to connect to relevant images.

## Building and deploying to Docker Cloud via GitHub

The `master` branch will always attempt to build to `skillsmatter/cci-ruby-qt:latest`.

Our Circle CI images reference explicit version numbers. Any changes should be tagged with a [semantic version number][^2] beginning with `v`. For example, to build a docker image numbered `1.2.0`:

```bash
$ git tag v1.2.0
$ git push origin --tags
```

## Manually deploying to Docker Cloud

You will need [access to the skillsmatter repository on Docker Cloud][^1] to manually push.



```bash
% docker build . -t skillsmatter/cci-ruby-qt:<version>
% docker push skillsmatter/cci-ruby-qt:<version>
```

Where `<version>` is a semver-aware version number, e.g., `1.0.3`. If omitted, the version tag will default to `latest`.

## Using this image

In the relevant Rails app, reference this image as the base image within `.circleci/config.yml`:

```YAML
version: 2
jobs:
  build:
    docker:
      - image: skillsmatter/cci-ruby-qt:1.2.0
      ...
```

**NB: Always specify a version number when using the image. Do not rely on `latest` for CI builds.**


[^1]: https://cloud.docker.com/swarm/skillsmatter/repository/list
[^2]: https://semver.org/

[docker_image]: https://cloud.docker.com/swarm/skillsmatter/repository/docker/skillsmatter/cci-ruby-qt

[redis]: https://redis.io/
[postgresql]: https://www.postgresql.org/
