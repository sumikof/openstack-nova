#!/bin/bash
set -e

render nova.conf.template -o /etc/nova/nova.conf

exec "$@"
