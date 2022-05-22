FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        curl \
        python3-dev \
        python3-pip \
        python3-setuptools

RUN curl -L https://github.com/bazelbuild/bazelisk/releases/download/v1.11.0/bazelisk-linux-amd64 > /bin/bazel && \
        chmod +x /bin/bazel && \
        bazel --version

RUN curl -L https://github.com/bazelbuild/buildtools/releases/download/5.1.0/buildifier-linux-amd64 > /bin/buildifier && \
        chmod +x /bin/buildifier

RUN pip3 install black==22.3.0
