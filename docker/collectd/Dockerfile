# Use Debian 12 (Trixie) as the base image
FROM debian:12

# Set environment variables to noninteractive mode
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install collectd
RUN apt-get update && \
    apt-get install -y curl less procps net-tools collectd-utils collectd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose relevant ports (optional, depending on config)
EXPOSE 9103/tcp

# Set the default command
CMD ["collectd", "-f", "-C", "/etc/collectd/collectd.conf"]

# docker run --name collectd --rm -d -p 127.0.0.1:9103:9103 collectd:1
