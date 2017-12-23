#! /bin/sh

pid=$(ps -e | grep "progress" | awk '{print $1}')
echo "$pid"
renice -5 -p $pid
echo -17>/proc/$pid/oom_adj