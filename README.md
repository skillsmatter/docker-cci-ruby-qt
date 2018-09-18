# cci-ruby-qt Docker image

This image is used by Circle CI 2 to create an 'empty' container with support for Ruby 2.3.x, Node.js and headless browsers for testing.

The image also includes client packages for [Redis][redis] and [PostgreSQL][postgres]

It is based upon Circle CI's core image, but also installs Qt5.5 for use in testing.

## Deployment

Assuming [you have access to the skillsmatter repository on Docker Cloud][^1], after changing the image it should be tagged with an [appropriate version number][^2], and published:

```bash
% docker build .
% docker push skillsmatter/cci-ruby-qt:<version>
```

Where `<version>` is a semver-aware version number, e.g., `1.0.3`.

This version should then be cited in the `.circle/config.yml` build within the repo in question.

## Notes

* Circle CI 

[^1]: TBD
[^2]: https://semver.org/
[redis]: https://redis.io/
[postgres]: https://www.postgresql.org/
