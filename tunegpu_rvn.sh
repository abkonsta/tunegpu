#!/bin/bash

# log beginning
echo "Started on `date`" > /var/run/tunegpu_status

# card #1 - RX580
CHOME="/sys/class/drm/card0/device"

echo "manual"       > $CHOME/power_dpm_force_performance_level
echo "s 2 750 780" > $CHOME/pp_od_clk_voltage
echo "s 3 760 780" > $CHOME/pp_od_clk_voltage
echo "s 4 770 780" > $CHOME/pp_od_clk_voltage
echo "c"            > $CHOME/pp_od_clk_voltage
echo "0 1 2 3 4"    > $CHOME/pp_dpm_sclk

# card #2 - RX550
CHOME="/sys/class/drm/card1/device"
echo "manual"       > $CHOME/power_dpm_force_performance_level
echo "s 3 900 750"  > $CHOME/pp_od_clk_voltage
echo "s 4 1000 750" > $CHOME/pp_od_clk_voltage
echo "c"            > $CHOME/pp_od_clk_voltage
echo "0 1 2 3 4"    > $CHOME/pp_dpm_sclk

# log completion
echo "Finished on `date`" >> /var/run/tunegpu_status

