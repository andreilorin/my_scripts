#!/bin/bash

source_video=`ls ~/recordings | dmenu -l 20`

time=`printf "asdadan\nerger" | dmenu -p "Time of the image: "`
#time=`echo "asdadan\nerger" | dmenu -p "Time of the image: "`


# ffmpeg -ss 00:02:20 -i AJAXCrashCourseVanillaJavaScript.webm -vframes 1 -q:v2 2 schema2.jpg
