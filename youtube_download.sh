# script to download from youtube

#!/bin/bash
youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'
