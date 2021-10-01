#!/bin/sh

while :
do
MEMUSED=$(free -h | awk '(NR==2) {print $3}' )
MEMTOT=$(free -h | awk '(NR==2) {print $2}' )

echo $MEMUSED"/"$MEMTOT
sleep 1
done
