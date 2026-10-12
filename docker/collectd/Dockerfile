# Use Debian 13 (Trixie) as the base image
FROM docker.io/debian:13.7

# Set environment variables to noninteractive mode
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install collectd
RUN apt-get update && \
    apt-get install -y curl less procps net-tools collectd-utils collectd lm-sensors && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose relevant ports (optional, depending on config)
EXPOSE 9103/tcp

COPY start_collectd.sh /
RUN chmod +x /start_collectd.sh

CMD ["/start_collectd.sh"]

# docker run --name collectd --rm -d -p 127.0.0.1:9103:9103 collectd:1
