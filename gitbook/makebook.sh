#!/bin/sh
set -e

if [ "$#" -ge 2 ]; then
	cd $2
	gitbook $1 .
else
	echo "param error">>/dev/stderr
fi