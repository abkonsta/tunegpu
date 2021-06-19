#!/bin/bash

# log beginning
echo "Started on `date`" > /var/run/tunegpu_status

# card #0 - RX580
CHOME="/sys/class/drm/card0/device"

echo "manual"       > $CHOME/power_dpm_force_performance_level
echo "s 3 1120 850" > $CHOME/pp_od_clk_voltage
echo "s 4 1190 850" > $CHOME/pp_od_clk_voltage
echo "c"            > $CHOME/pp_od_clk_voltage
echo "0 1 2 3 4"    > $CHOME/pp_dpm_sclk


# card #1 - RX590
CHOME="/sys/class/drm/card1/device"

echo "manual"       > $CHOME/power_dpm_force_performance_level
echo "s 2 1150 850" > $CHOME/pp_od_clk_voltage
echo "s 3 1150 850" > $CHOME/pp_od_clk_voltage
echo "s 4 1220 850" > $CHOME/pp_od_clk_voltage
echo "c"            > $CHOME/pp_od_clk_voltage
echo "0 1 2 3 4"    > $CHOME/pp_dpm_sclk

# log completion
echo "Finished on `date`" >> /var/run/tunegpu_status

