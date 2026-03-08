FROM ghcr.io/embeddedci-com/ubuntu-embedded-build:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc-arm-none-eabi \
    binutils-arm-none-eabi \
    gdb-multiarch \
    libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
