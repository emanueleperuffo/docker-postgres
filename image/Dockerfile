FROM emanueleperuffo/baseimage-debian
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

ENV PG_MAJOR 9.4
ENV POSTGIS_VERSION 2.1
ENV POSTGRES_PASSWORD ""
ENV PGDATA /var/lib/postgresql/data
ENV SYSLOG_SERVER ""

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

VOLUME ["/var/lib/postgresql/data"]

EXPOSE 5432

CMD ["/sbin/my_init"]