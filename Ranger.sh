#!/bin/bash
#Simple but Effective :D Happy Hacking !!
#By Charafeddine
echo "Checking Live Hosts...." 
echo "Results will be saved in output.txt"
printf "%s\n"
sleep 1
function end() {
	echo "Ending task."
}
trap end SIGINT
printf "%s\n" 10.{0..255}.{0..255}.0 172.{16..31}.{0..255}.0 192.168.{0..255}.0 | sort | uniq -u | while read ip; do tput setaf 2; fping -a -g $ip/24 | tee output.txt ; done
