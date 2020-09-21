#!/bin/bash
script=$(ls ~/projects/scripts | dmenu -l 20)

if [ "$script" = "test_scripts" ]; then
    test_script=$(ls ~/projects/scripts/test_scripts | dmenu -l 20)
    st sh -c "vim ~/projects/scripts/test_scripts/$test_script"
else
    st sh -c "vim ~/projects/scripts/$script"
fi

# List my scripts folder in dmenu
# Upon selection it will open the desired
# script in a new terminal with vim