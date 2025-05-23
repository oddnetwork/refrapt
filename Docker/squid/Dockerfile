from debian:12-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
  apt -y dist-upgrade && \
  apt install -y squid && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD chmod o+w /dev/stdout && squid -N