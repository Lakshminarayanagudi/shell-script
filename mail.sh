#!/bin/bash

TO_TEAM=$1
ALERT_TYPE=$2
BODY=$3
TO_ADDRESS=$4
SUBJECT=$5

FINAL_BODY=$(sed -e 's/TO_TEAM/$TO_TEAM/g' 's/ALERT_TUPE/$ALERT_TYPE/g' -e 's/BODY/$BODY/$BODY/g' template.html)

echo "$FINAL_BODY" | mail -s "$SUBJECT" "$TO_ADDRESS"