#!/bin/bash

PRCNT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep -E "percentage"|awk '{print $2}')
STATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep -E "state"|awk '{print $2}')

DSCHRG="discharging"

echo "$PRCNT"
echo "$PRCNT"

if [ $STATE == $DSCHRG ] && [ $PRCNT -gt 20 ]
then
    echo "#FFFF00"
elif [ $STATE == $DSCHRG ]
then
    echo "#FF0000"
else
    echo "#00FF00"
fi

if [ $PRCNT -le 5 ]
then
    exit 33
fi

exit 0
