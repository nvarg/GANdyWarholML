#!/bin/sh

URLS="$(jq -r '.[] | .image' $1)"

echo "Downloading images in $1..."
for i in $URLS; do
    curl "$i" -s --output images/"$(basename $i)" &
done
wait
echo "Done."

