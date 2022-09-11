#!/bin/bash

# 2>/dev/null -> redirect error messages to /dev/null
# wc -l -> pring the newline counts
find /var/log -type f -name "*.log" 2>/dev/null -exec cat {} \; | wc -l
