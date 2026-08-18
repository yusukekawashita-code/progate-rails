FROM ruby:3.3

ENV APP=/app
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

RUN apt-get update -qq \
    && apt-get install -y build-essential default-mysql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $APP

COPY Gemfile $APP/Gemfile
COPY Gemfile.lock $APP/Gemfile.lock

RUN bundle install