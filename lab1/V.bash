#!/bin/bash

awk '$2 == "INFO" {print $0}' syslog > info.log
