
FROM patavee/rpi-scipy-matplotlib-opencv
MAINTAINER Patavee Charnvivit <patavee@gmail.com>

RUN apt-get update && apt-get install -y \
    usbutils \
    curl \
    git \
    iputils-ping \
    nano \
    net-tools \
    build-essential \
    openssh-client && \
rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/

RUN pip install --upgrade pip && \
    pip install --requirement /tmp/requirements.txt
