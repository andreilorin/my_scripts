# List my scripts folder in dmenu
# Upon selection it will open the desired
# script in a new terminal with vim

#!/bin/bash
script=`ls ~/projects/scripts | dmenu -l 20`

st sh -c "vim ~/projects/scripts/$script"
