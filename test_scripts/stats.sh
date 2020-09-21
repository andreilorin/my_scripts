#!/bin/bash
memory=$(free -h | awk '/^Mem:/ { print $3 "/" $2}')

processes=$(ps axch -o cmd:15,%mem --sort=-%mem | head)

echo "Memory $memory"
echo "$processes"

# add this to a run commands option in dmenu(my_script)
# use notify send, entr

# ls folder | entr notify-send "Script Modified"