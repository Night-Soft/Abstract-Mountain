#!/bin/bash
currentDir="Red-Honeycomb"
copy=$((cp -r $HOME/khuj/Kde-Splashscreen/pre-release/$currentDir /$HOME/.local/share/plasma/look-and-feel/) 2>&1)
len=$(expr length "$copy")
echo $copy
echo $len
if  [ $len != '0' ];
then
notify-send --urgency=normal --expire-time=10000 "Copy error: $copy"
else
notify-send --urgency=normal --expire-time=7000 "Themes updated successfully!
$currentDir"
fi
