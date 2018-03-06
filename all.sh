#!/usr/bin/env bash 
gnome-terminal -x bash -c "./load_map.sh;exec bash;"
gnome-terminal -x bash -c "./humanoid_localization.sh;exec bash;"
gnome-terminal -x bash -c "./openbag.sh;exec bash;"


