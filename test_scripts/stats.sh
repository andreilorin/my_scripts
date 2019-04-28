free -h | awk '/^Mem:/ { print "Memory" $3 "/" $2}'
