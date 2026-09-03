FROM ruby:4.0-alpine

WORKDIR /app

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 8

ADD . /app
