#!/bin/bash

if [[ $PWD != $HOME ]]
then
exit 1
else
echo $PWD
exit 0
fi
