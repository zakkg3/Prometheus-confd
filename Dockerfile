FROM prom/prometheus

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY confd /etc/confd/
USER root
RUN wget -O /bin/confd https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 && \
      chmod +x /bin/confd && \
      chmod +x /usr/local/bin/docker-entrypoint.sh

USER nobody
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
