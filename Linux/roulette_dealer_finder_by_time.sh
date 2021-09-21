#!/bin/bash

echo 'Please type in a date (4 digits)'
read -r param
echo 'Please type in a time (XX:XX:XX AM)'
read -r param2

grep  "$param2" *Dealer_schedule | grep "$param" | awk -F " " '{print $1,$2,$5,$6}'
