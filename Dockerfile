FROM ubuntu:20.10

RUN apt-get update && apt-get install -y libx11-dev libxtst6

COPY bin/basic /usr/local/bin/basic
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY main.bas /root/main.bas

WORKDIR /root

ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]
