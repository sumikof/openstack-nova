FROM sumikof/openstack-base

RUN apt update -y && apt -y install \
       nova-api \
       nova-placement-api \
       nova-conductor \
       nova-consoleauth \
       nova-scheduler \
       nova-novncproxy \
       python3-novaclient \
    && apt clean 

ADD nova.conf.template /template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]