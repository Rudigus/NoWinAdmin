#!/bin/bash
# This is a script to convert audio to video (with a still image) using ffmpeg
# Dependencies: ffmpeg, exiftool

echo "Audio file(s): "
read audio
echo "Image file: "
read image
for track in $audio; do 
	filename="${track##*/}"
	filename="${filename%.*}"
	title="$(exiftool -s -s -s -title $track)"
	artist="$(exiftool -s -s -s -artist $track)" 
	if [ -n "$title" ] && [ -n "$artist" ]
	then
		filename="$title - $artist"
	fi
	ffmpeg -loop 1 -i $image -i $track -shortest -f mp4 "$filename.mp4"
done
