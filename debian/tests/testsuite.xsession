#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export XDG_CACHE_HOME="$HOME"
export XDG_DATA_HOME="${HOME}/.qttest/share"
export XDG_RUNTIME_DIR="${HOME}/runtime"
mkdir -p ${XDG_DATA_HOME} || true
mkdir -p ${XDG_RUNTIME_DIR} || true
export XDG_DATA_DIRS="$XDG_DATA_HOME:${HOME}/.local/share:/usr/share"
openbox & WMPID=$!
sleep 1
kdeinit5
cleanup () {
    kdeinit5_shutdown
    if [ -n "$WMPID" ]; then kill "$WMPID"; fi
}
trap cleanup EXIT
kbuildsycoca5 --testmode
dh_auto_test
