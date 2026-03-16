#!/bin/bash

START_TIME=$(date)
echo "Script excuted: $START_TIME"

sleep 10

END_TIME=$(date)
TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script excuted: $TOTAL_TIME"