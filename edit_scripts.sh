#!/bin/bash
script=`ls ~/projects/scripts | dmenu -l 20`

st sh -c "vim ~/projects/scripts/$script"
