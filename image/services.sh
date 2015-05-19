#!/bin/bash
set -e
source /build/buildconfig
set -x

## Installing Postgres
$minimal_apt_get_install postgresql-${PG_MAJOR} postgresql-contrib-${PG_MAJOR} postgis-${POSTGIS_VERSION}

## Remote syslog
cp /build/config/syslog-ng/conf.d/20-postgres-remote.conf /etc/config/syslog-ng/