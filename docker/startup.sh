#!/usr/bin/env bash

echo start clone
hg status || hg clone https://hg.openjdk.java.net/jdk/jdk /jdk
echo start update
hg pull && hg update
echo start configure
bash configure --with-extra-cflags='-Wno-stringop-overflow -Wno-stringop-truncation'
echo start make
make
