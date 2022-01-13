#! /bin/bash

RES=`./first`

if [[ $RES == "42" ]]; then
	echo "nicely done padawan"
else
	echo "nope, try again"
	exit 42
fi

