#!/bin/bash

# card #1 - RX580
CHOME="/sys/class/drm/card0/device"

echo 'r' > $CHOME/pp_od_clk_voltage
echo 'c' > $CHOME/pp_od_clk_voltage
