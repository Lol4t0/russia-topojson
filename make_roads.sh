#!/bin/sh

jq -c '.features[].geometry.coordinates | reduce .[] as $item ([]; . + $item)' $@ | tr -d "[]"
