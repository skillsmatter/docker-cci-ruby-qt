FROM circleci/ruby:2.3.7-node-browsers-legacy
LABEL maintainer="platform@skillsmatter.com"
RUN sudo apt-get update
RUN sudo apt-get install -y qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base \
	gstreamer1.0-tools gstreamer1.0-x redis-tools postgresql-client --no-install-recommends
RUN sudo gem install bundler --version 1.16.2
