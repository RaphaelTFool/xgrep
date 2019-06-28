#!/bin/bash

P=`dirname $(readlink -f $0)`

mkdir -p ~/usr/bin
cp $P/xgrep ~/usr/bin/xgrep
[[ -f ack ]] && cp $P/ack ~/usr/bin/ack
[[ ! -f ack ]] && curl https://beyondgrep.com/ack-2.22-single-file > ~/usr/bin/ack && chmod 0755 ~/usr/bin/ack
echo ". ~/usr/bin/xgrep" >> ~/.bashrc
