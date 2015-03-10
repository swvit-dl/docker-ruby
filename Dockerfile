#
# Ruby Dockerfile
#

# Pull base image.
FROM ubuntu:trusty
MAINTAINER Daniel Farrell <danielfarrell76@gmail.com>

# Do not try to prompt for config
ENV DEBIAN_FRONTEND noninteractive

# Install Ruby2.1
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN apt-get update && apt-get install -y build-essential git ruby2.1 ruby2.1-dev libxml2-dev libxslt-dev
RUN apt-get clean

# Install bundler
RUN gem install bundler --no-rdoc --no-ri

