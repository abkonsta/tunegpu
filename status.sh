#!/bin/bash

if [ $# -eq 0 ]
then
  echo "No arguments supplied"
  exit 1
fi

CHOME="/sys/class/drm/card$1/device"
cat $CHOME/pp_od_clk_voltage
cat $CHOME/pp_dpm_sclk

