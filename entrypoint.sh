#!/usr/bin/env bash

set -x

/setuid.sh \
&& su -m dashcam /blackvuesync.sh \
&& [[ -z $RUN_ONCE ]] \
&& crond -f
