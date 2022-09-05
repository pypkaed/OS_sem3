#!/bin/bash

man bash | grep -E -o -h -i "[A-Za-z]{4,}" | sort | \
uniq -i -c | sort -r -nk1 | head -n 3

# finding 4+letter words via grep -> sorting to rm unique files \
# and add counter via -c (ignoring lettercases -i) -> \
# -> reverse sorting by first numeral column -> displaying first 3 strings
