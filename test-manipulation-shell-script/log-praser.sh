#!/bin/bash

LOG_FILE="access.log"

echo -e "\n[1. IP Address and Status Code]"
# Clean line, extract IP and status code using awk and sed
sed 's/["\[\]]//g' "$LOG_FILE" | awk '{print $1, $9}'

echo -e "\n[2. GET Request IPs in HEX]"
# Clean line, extract GET requests, convert IP to hex
sed 's/["\[\]]//g' "$LOG_FILE" | grep 'GET' | awk '{
    split($1, ip, ".");
    printf "%02X%02X%02X%02X\n", ip[1], ip[2], ip[3], ip[4]
}' | tr 'a-f' 'A-F'

echo -e "\n[3. HTTP Status Code Summary]"
# Clean line, extract status codes, count
sed 's/["\[\]]//g' "$LOG_FILE" | awk '{print $9}' | sort | uniq -c | sort -nr
