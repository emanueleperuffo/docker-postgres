FROM emanueleperuffo/baseimage-debian:latest
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

ENV PGDATA /var/lib/postgresql/data
ENV POSTGRES_VERSION 9.4
ENV POSTGRES_PASSWORD pass

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

VOLUME ["/var/lib/postgresql/data"]

EXPOSE 5432

CMD ["/sbin/my_init"]
