#!/bin/bash

for dir in /home/*/
do
    dir=${dir%*/}
    sudo -u ${dir##*/} $HOME/.local/bin/hdmi_sound_toggle.sh
done
