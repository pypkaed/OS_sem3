#!/bin/bash

# (WW) - WARN -> Warning:
# (II) - INFO -> Information:
# sed s - replace

awk '$3 == "(WW)" {print}' X.log | sed 's/(WW)/Warning:/' > full.log
awk '$3 == "(II)" {print}' X.log | sed 's/(II)/Information:/' >> full.log
