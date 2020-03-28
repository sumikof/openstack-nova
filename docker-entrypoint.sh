#!/bin/bash
set -x

render nova.conf.template -o /etc/nova/nova.conf

exec "$@"
