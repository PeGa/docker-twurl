FROM alpine:latest
RUN apk add \
          build-base \
          ruby \
          ruby-dev
RUN gem install twurl --no-ri
CMD sh
