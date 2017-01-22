FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.0

RUN gem install francois-piston --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["piston"]
CMD ["--help"]
