from debian:12-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
  apt -y dist-upgrade && \
  apt install -y --no-install-recommends python3 python3-pip wget && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
  pip3 install --no-cache-dir --break-system-packages --upgrade pip && \
  pip3 install --no-cache-dir --break-system-packages click Colorama tqdm wget filelock tendo

WORKDIR /app

ADD run.sh /usr/local/bin/run.sh

#RUN python3 -m pip install --break-system-packages .