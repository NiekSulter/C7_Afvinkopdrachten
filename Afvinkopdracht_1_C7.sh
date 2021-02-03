#!/bin/bash

FILE = variant_summary.txt.gz

if test -f "$FILE"; then
    echo "$FILE bestaat"
else
    echo "$FILE bestaat niet"
fi
