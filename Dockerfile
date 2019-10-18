FROM alpine:latest
COPY ./publish.sh /
RUN apk add  --no-cache \
          build-base \
          ruby \
          ruby-dev \
	  perl \
	  perl-html-parser
RUN gem install twurl --no-ri
CMD /publish.sh
