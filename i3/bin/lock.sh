#!/bin/bash

# exec --no-startup-id 
i3lock --nofork \
  -e \ # ignore-empty-password \
  -f \ # show-failed-attempts \
  -i $HOME/.config/i3/img/lockscreen.png # image
