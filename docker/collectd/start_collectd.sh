#!/bin/sh
dpkg-query -W collectd collectd-core
collectd -f -C /etc/collectd/collectd.conf