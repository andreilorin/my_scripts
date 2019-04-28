# List my recordings folder in dmenu and play the selected video

#!/bin/bash
ls ~/recordings | dmenu -l 20 | xargs -I {} mpv ~/recordings/"{}"
