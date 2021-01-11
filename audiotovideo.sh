#!/bin/bash
# This is a script to convert audio to video (with a still image) using ffmpeg

echo "Audio file(s): "
read audio
echo "Image file: "
read image
for track in $audio; do 
	filename="${track##*/}"
	filename="${filename%.*}"
	ffmpeg -loop 1 -i $image -i $track -shortest -f mp4 "$filename.mp4"
done
