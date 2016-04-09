#!/bin/sh

export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export XDG_CACHE_HOME="$HOME"
export XDG_DATA_HOME="${HOME}/.qttest/share"
mkdir -p ${XDG_DATA_HOME}
export XDG_DATA_DIRS="$XDG_DATA_HOME:${HOME}/.local/share:/usr/share"
openbox &
sleep 5
kbuildsycoca5
dh_auto_test
