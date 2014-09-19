#!/bin/sh

jq -c '.features[].geometry.coordinates | reduce .[] as $item ([]; . + $item)' $@ | tr -d "[]"
cat roads.csv | awk '{ print length, -bash }' | sort -r -n -T /data/tmp/ | cut -d" " -f2- | head -n 100000 > roads_longest.csv
