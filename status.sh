#!/bin/bash

# card #1 - RX580
CHOME="/sys/class/drm/card0/device"

cat /var/run/tunegpu_status
cat $CHOME/pp_od_clk_voltage
cat $CHOME/pp_dpm_sclk
