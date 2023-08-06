#!/bin/bash

echo -e "Running Benchmark...\n"
date
vcgencmd measure_temp
start_time="$(date -u +%s)"
sysbench --test=cpu --cpu-max-prime=50000000 --threads=4 --report-interval=10 run
end_time="$(date -u +%s)"
elapsed="$(($end_time-$start_time))"
echo "$elapsed seconds."
vcgencmd measure_temp
