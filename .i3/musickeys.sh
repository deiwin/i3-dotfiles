#!/bin/bash

case $1 in
   "toggle")
       key="XF86AudioPlay"
       ;;
   "stop")
       key="XF86AudioStop"
       ;;
   "next")
       key="XF86AudioNext"
       ;;
   "prev")
       key="XF86AudioPrev"
       ;;
   *)
       echo "Usage: $0 toggle|stop|next|prev"
       exit 1
        ;;
esac
SPOTIFY="Spotify Premium - Linux Preview"
if xdotool search --name "$SPOTIFY"
then
  xdotool search --name "$SPOTIFY" key $key
else
  mpc $1
fi
exit 0
