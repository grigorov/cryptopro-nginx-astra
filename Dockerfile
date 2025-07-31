ARG ASTRALINUX_VERSION="ubi18"
FROM registry.astralinux.ru/library/astra/${ASTRALINUX_VERSION}:latest
ADD ./linux-amd64_deb.tgz /tmp/
COPY --chmod=755 certs_info /opt/cprocsp/bin/amd64/
RUN cd /tmp/linux-amd64_deb && ./install.sh cprocsp-nginx
ENV PATH="/opt/cprocsp/bin/amd64:/opt/cprocsp/sbin/amd64:${PATH}"
STOPSIGNAL SIGQUIT
CMD ["/opt/cprocsp/sbin/amd64/cpnginx", "-g", "daemon off;"]