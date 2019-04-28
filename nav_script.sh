#!/bin/bash

#ls | dmenu -l 20 | xargs -I {} ls ./{} | dmenu -l 20

choice=`ls ~ | dmenu -l 20`
file_details=`file $choice`
echo "file details:  $file_details"
#file_details_no_ws="`echo $file_details | sed 's/ //g'`"
#file_type=`echo $file_details_no_ws | awk -F: '{ print $2 }'`

file_type=`echo $file_details | sed 's/ //g' | awk -F: '{ print $2 }'`

echo "file type: $file_type"

if [ $file_type = "directory" ];then
  echo "This is a directory"
  ls ./$choice | dmenu -l 20
else
  echo "This is a: $file_type"
  cat ./$choice
fi
