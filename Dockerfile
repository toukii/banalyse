FROM python:3.6-alpine

WORKDIR /root
ADD . /root
ENV PYTHONPATH=/root

RUN apk add gcc \
  && pip install numpy==1.13.3 \
  && rm -rf /var/cache/apk/* \
  && python condd.py
