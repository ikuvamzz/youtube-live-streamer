FROM alpine:3

RUN apk add --no-cache bash ffmpeg

RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app/

ADD . /usr/src/app/
RUN chmod +x stream1.sh
CMD ./stream1.sh
