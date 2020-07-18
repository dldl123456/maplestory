#!/bin/bash

SELF=$(cd `dirname $0`; pwd)
cd $SELF
mkdir -p local

gcc -o $SELF/local/maple-server \
    -I $SELF -I $SELF/local/wz/dist/include -I $SELF/local/libuv/dist/include -I $SELF/local/libwebsockets/dist/include \
    maple-server-main.c \
    -L $SELF/local/wz/dist/lib -L $SELF/local/libwebsockets/dist/lib -lwebsockets
