#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <Principal> <Rate> <Time>"
    exit 1
fi

PRINCIPAL=$1
RATE=$2
TIME=$3

SIMPLE_INTEREST=$(echo "scale=2; ($PRINCIPAL * $RATE * $TIME) / 100" | bc)

echo "Simple Interest: $SIMPLE_INTEREST"
