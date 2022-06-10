from certbot/dns-cloudflare:v1.28.0
MAINTAINER bear

ADD crontab /etc/crontabs
RUN crontab /etc/crontabs/crontab

COPY ./scripts/ /scripts
RUN chmod +x /scripts/run.sh

ENTRYPOINT []
CMD ["crond", "-f"]