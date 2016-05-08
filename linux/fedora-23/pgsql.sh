#!/bin/sh

#
# in /etc/yum.repos.d/fedora.repo add
# [fedora]
# exclude=postgresql*
#
# in /etc/yum.repos.d/fedora-updates.repo add
# [updates]
# exclude=postgresql*
#

rpm -Uvh http://yum.postgresql.org/9.4/fedora/fedora-23-x86_64/pgdg-fedora94-9.4-4.noarch.rpm

dnf install -y postgresql postgresql-server postgresql-plperl postgresql-contrib pgadmin3

passwd postgres -d

systemctl enabled postgresql-9.4.service
systemctl start postgresql-9.4.service
