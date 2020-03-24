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

ADD template/nova.conf.template /template
ADD template/nova-compute.conf.template /template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
