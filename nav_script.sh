# Script to navigate through my files

#!/bin/bash

choice=`ls ~ | dmenu -l 20`
file_details=`file ${choice}`
echo "file details:  $file_details"

file_type=`echo ${file_details} | sed 's/ //g' | awk -F: '{ print $2 }'`

echo "file type: $file_type"

if [ $file_type = "directory" ];then
  echo "This is a directory"
  ls ./${choice} | dmenu -l 20
else
  echo "This is a: $file_type"
  cat ./${choice}
fi
