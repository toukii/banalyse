FROM alpine:latest
WORKDIR /root
ADD . /root/
RUN apk update && apk add --no-cache pkgconfig python-dev py-numpy go libc-dev glib && \
rm -rf /var/cache/apk/* /root/.git

ENV PYTHONPATH /root

RUN go version && pkg-config --libs --cflags python-2.7 && python condd.py

CMD ["sh"]