#!/bin/sh

WORKDIR="$XDG_CONFIG_HOME/i3"
[ -f $WORKDIR/list ] && cat $WORKDIR/list | xargs -I file cat $WORKDIR/file > $WORKDIR/config \
  && echo "i3 config generated"
