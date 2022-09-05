#!/bin/bash

# -nk2 - sort by numeral, column 2
awk -F: '{print $1" "$3}' /etc/passwd | sort -nk2
