FROM alpine:latest
RUN apk add \mi mail:




          build-base \
          ruby \
          ruby-dev
RUN gem install twurl --no-ri
