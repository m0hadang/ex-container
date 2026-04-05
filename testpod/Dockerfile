FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    vim \
    iputils-ping \
    netcat-openbsd \
    dnsutils \
    net-tools \
    curl \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
