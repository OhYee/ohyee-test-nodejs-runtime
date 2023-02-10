#!/bin/bash


r="$((($RANDOM * $RANDOM) % 5 ))"
echo $r

if [ "$r" -ne "0" ] ; then echo "error!" && abcdefg && return 1; fi

BUILD_TIME=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p build
cp index.js build/index.js
cp bootstrap build/bootstrap
sed "s/{BUILD_TIME}/${BUILD_TIME}/" -i "build/index.js"