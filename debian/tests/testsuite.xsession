#!/bin/sh

export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export XDG_CACHE_HOME="$HOME/.qttest/cache"
export XDG_DATA_HOME="${HOME}/.qttest/share"

mkdir -p ${XDG_DATA_HOME}
openbox &
sleep 5
dh_auto_test
