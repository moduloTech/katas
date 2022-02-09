#
# BUILD IMAGE
#
FROM ruby:3.1.0-alpine3.15

ENV RAILS_ENV=development
WORKDIR /app

RUN apk add --update --no-cache \
    alpine-sdk \
    nodejs \
    sqlite-dev \
    tzdata \
    gcompat
RUN gem install bundler -v 2.3.3

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs=2

COPY . .

EXPOSE 3000

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
