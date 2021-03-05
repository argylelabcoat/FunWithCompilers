#!/bin/sh

cd /tmp


if [ ! -d /opt/armv7l-linux-musleabihf-cross ]; then
    wget "http://more.musl.cc/10/armv7l-linux-musleabihf-cross.tgz"
    sudo tar -C /opt/ -xzf armv7l-linux-musleabihf-cross.tgz
    rm armv7l-linux-musleabihf-cross.tgz
fi

if [ ! -d /opt/x86_64-linux-musl-native/ ]; then
    wget "http://more.musl.cc/10/x86_64-linux-musl-native.tgz"
    sudo tar -C /opt/ -xzf x86_64-linux-musl-native.tgz
    rm x86_64-linux-musl-native.tgz
fi

