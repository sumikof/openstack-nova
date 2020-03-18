#!/bin/bash
set -e

render nova.conf.template /etc/nova/nova.conf

exec "$@"
