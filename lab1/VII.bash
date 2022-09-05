#!/bin/bash

# -E - EXTENDED REGULAR EXPRESSIONS
# -r - search in all dirs
# -s - ignore warnings/errors
# -o - only matching pattern
# + in regexp - one or more element
# \b - start/end
# -h - ignore prefixing of file

grep -r -E -s -o -h "\b[A-Za-z0-9._%-+]+@[A-Za-z0-9_%-+]+\.[A-Za-z]+\b" /etc/ | sort \
| uniq | tr '\n' "," > emails.lst

# sort + uniq - delete all repeating emails
