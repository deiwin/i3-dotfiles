#!/bin/bash

case $1 in
   "toggle")
       PLAYERCTL_COMMAND="play-pause"
       ;;
   "stop")
       PLAYERCTL_COMMAND="stop"
       ;;
   "next")
       PLAYERCTL_COMMAND="next"
       ;;
   "prev")
       PLAYERCTL_COMMAND="previous"
       ;;
   *)
       echo "Usage: $0 toggle|stop|next|prev"
       exit 1
        ;;
esac
if playerctl status
then
  playerctl $PLAYERCTL_COMMAND
elif mpc status
then
  mpc $1
fi
exit 0
