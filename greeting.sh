#!/bin/bash -e

time_now=$(date)
temperature=$(/usr/bin/vcgencmd measure_temp)
model=$(tr -d '\0' < /sys/firmware/devicetree/base/model)
printf -v mem_usage '%s%%' $(free | grep Mem | awk '{print $3/$2 * 100.0}')

cowsay -f tux "Welcome $USER to $HOSTNAME ($model)! Time NOW is: $time_now. SOC $temperature. RAM Usage: $mem_usage"
