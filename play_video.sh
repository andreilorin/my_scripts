#/bin/bash
ls ~/recordings | dmenu -l 20 | xargs -I {} mpv ~/recordings/"{}"
