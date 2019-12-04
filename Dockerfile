FROM alpine:latest
WORKDIR /root
RUN apk update && apk add --no-cache pkgconfig python-dev py-numpy go libc-dev glib
ENV GOPATH /root/go
ENV PYTHONPATH /root
ADD . ~/

RUN go version && pkg-config --libs --cflags python-2.7 && go test -v

CMD ["sh"]