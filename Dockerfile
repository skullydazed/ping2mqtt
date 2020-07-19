FROM debian:stable
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Pre-reqs
RUN apt update && \
    apt install --no-install-recommends -y python3-paho-mqtt python3-pip python3-setuptools && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install icmplib

# Copy files into place
COPY ping2mqtt /

# Set the entrypoint
ENTRYPOINT ["/ping2mqtt"]
