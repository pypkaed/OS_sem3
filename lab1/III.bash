#!/bin/bash

echo Menu: 1 2 3 4

read command
case $command in
1 )
nano
;;
2 )
vi
;;
3 )
links
;;
4 )
exit
;;
esac
