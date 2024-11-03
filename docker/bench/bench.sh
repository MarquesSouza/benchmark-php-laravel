#!/usr/bin/env sh

sleep 5

echo
echo "FPM"
wrk -t16 -c100 -d5s --latency http://nginx:8001

sleep 30

echo
echo "Laravel"
wrk -t16 -c100 -d5s --latency http://nginx:8002

sleep 30
echo
echo "Swoole"
wrk -t16 -c100 -d5s --latency http://nginx/8003

