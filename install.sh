#!/bin/bash

P=`dirname $(readlink -f $0)`

mkdir -p ~/bin
ln -fs $P/xgrep ~/bin/xgrep
curl https://beyondgrep.com/ack-2.22-single-file > ~/bin/ack && chmod 0755 ~/bin/ack
