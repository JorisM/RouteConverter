RouteConverter
==============

Convert a range of IP's to DD-WRT compatible policies. 

Usage: 

`chmod +x converter.sh`
`./converter.sh <start_ip> <end_ip>`
Example:
> ./converter.sh 212.124.243.128 212.124.243.255
> route 212.124.243.128 255.255.255.128 vpn_gateway

