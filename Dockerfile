FROM ruby:2.6-alpine

RUN apk add --no-cache build-base gcc bash cmake

WORKDIR /site

COPY Gemfile /site

RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000"]
