#!/bin/bash
#
# a simple logout script which gracefully
# closes all apps before executing
#
###

message() {
  echo "usage: leave [option]"
  echo
  echo "  options:"
  echo "        -e       logout / kill X"
  echo "        -r       reboot system"
  echo "        -s       shutdown system"
  echo
  exit 1
}

case $1 in
  -e) LABEL="logout"  ; ACTION="i3-msg exit" ;;
  -r) LABEL="restart" ; ACTION="systemctl reboot" ;;
  -s) LABEL="shutdown"; ACTION="systemctl poweroff" ;;
  *)             message          ;;
esac

# no X?
if [ -z "$DISPLAY" ]; then
  echo -n "system will $LABEL in 3... "
  sleep 1 && echo -n "2... "
  sleep 1 && echo "1... "
  sleep 1 && $ACTION &

  exit 0
fi

# are you sure?
#if zenity --question \
#          --title=$LABEL \
#          --ok-label=$LABEL \
#          --text="are you sure you want to $LABEL?"; then

  # gracefully close all apps
  pkill mono
  i3-msg [class=".*"] kill
  #wmctrl -l | awk '{print $1}' | while read APP; do
  #  wmctrl -i -c $APP || echo "$APP not killed"
  #done

  # do it
  $ACTION &

  exit 0
#fi

# if we're still here, fail
exit 1
