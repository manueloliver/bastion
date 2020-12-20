FROM debian:stable
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -o Dpkg::Options::="--force-confold" \
    && apt-get install -y build-essential mc vim telnet redir unzip procps\
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && truncate -s 0 /var/log/*log

COPY . . 
CMD sleep 1d
