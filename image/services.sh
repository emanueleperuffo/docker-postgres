#!/bin/bash
set -e
source /build/buildconfig
set -x

## Installing postgres
$minimal_apt_get_install postgresql-common
sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf
$minimal_apt_get_install postgresql-${POSTGRES_VERSION} postgresql-contrib-${POSTGRES_VERSION}

## Setting up postgres service
mkdir /etc/service/postgres
cp /build/runit/postgres /etc/service/postgres/run