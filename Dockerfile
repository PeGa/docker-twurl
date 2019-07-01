FROM alpine:latest
RUN apk add \
          build-base
          ruby
          ruby-dev
gem install twurl --no-ri
