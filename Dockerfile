FROM ubuntu:18.04

LABEL version 20180313

RUN apt update -y && apt upgrade -y && \
    apt install -y git python && \
    cd /opt && git clone https://github.com/theotherp/nzbhydra.git && \
    apt clean all

CMD /usr/bin/python /opt/nzbhydra/nzbhydra.py
