#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P01d1f21
  \e]P1cc342b
  \e]P2198844
  \e]P3fba922
  \e]P43971ed
  \e]P5a36ac7
  \e]P63971ed
  \e]P7c5c8c6
  \e]P8969896
  \e]P9cc342b
  \e]PA198844
  \e]PBfba922
  \e]PC3971ed
  \e]PDa36ac7
  \e]PE3971ed
  \e]PFffffff
  "
  # get rid of artifacts
  clear
fi
