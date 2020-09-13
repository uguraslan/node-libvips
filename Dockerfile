FROM node:14.9-buster

# Libvips Compile with libimagequant and giflib
ENV LIBVIPS_VERSION=8.10.1

RUN apt-get -y update && \
    apt-get -y --no-install-recommends install wget make g++ build-essential libtool libimagequant0 libimagequant-dev libgif-dev && \
    cd /tmp && \
    wget "https://github.com/libvips/libvips/releases/download/v${LIBVIPS_VERSION}/vips-${LIBVIPS_VERSION}.tar.gz" && \
    tar xf "vips-${LIBVIPS_VERSION}.tar.gz" && \
    cd "vips-${LIBVIPS_VERSION}" && \
    ./configure && \
    make install && \
    ldconfig /usr/local/lib && \
    apt-get -y --purge autoremove && \
    apt-get -y clean && \
    rm -rf /usr/share/doc /usr/share/man /var/lib/apt/lists/* /root/* /tmp/* /var/tmp/*
    