#!/bin/bash
IFS=. read -r i1 i2 i3 i4 <<< "$1"
IFS=. read -r m1 m2 m3 m4 <<< "$2"


printf "route "
printf "%d.%d.%d.%d " "$((i1))" "$((i2))" "$((i3))" "$((i4))"
printf "%d.%d.%d.%d vpn_gateway\n" "$((~(m1-i1) & 0xFF))" "$((~(m2-i2) & 0xFF))" "$((~(m3-i3) & 0xFF))" "$((~(m4-i4) & 0xFF))"
