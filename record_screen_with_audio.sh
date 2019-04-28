# Script to start screen recording with audio
# Will initiate a dmenu prompt for the video name, then start creating the video

#!/bin/bash
video_name=`echo "" | dmenu -p "Name the video:"`

st sh -c "ffmpeg -f x11grab -s 1920x1080 -i :0.0 -f pulse -ac 2 -i default ~/recordings/$video_name; bash"