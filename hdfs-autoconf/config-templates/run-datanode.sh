#!/bin/bash
#Usage: bash $LAUNCHPAD_DIR/run.sh [--daemon]

source config.sh

cd ${HADOOP_VERSION}/bin
if [[ $# > 0 && $1 == "--daemon" ]]; then
  export HADOOP_PID_DIR="$LOGS_DIRECTORY" && ./hadoop-daemon.sh start avatardatanode
else
  ./hadoop avatardatanode
fi

