FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y dnsmasq apache2 squid && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY apache2.conf /etc/apache2/apache2.conf
COPY squid.conf /etc/squid/squid.conf
COPY tftp /srv/tftp
COPY www /var/www

EXPOSE 53 80 3128

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
