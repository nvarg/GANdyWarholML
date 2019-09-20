#!/bin/sh

for i in images/*; do
    type="$(file $i)"
    if echo "$type" | grep "HTML"; then
        echo removing $i
        rm $i
    fi
done
