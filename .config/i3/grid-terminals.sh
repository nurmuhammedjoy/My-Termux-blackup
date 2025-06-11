#!/bin/bash
i3-msg 'exec xfce4-terminal'
sleep 0.2
i3-msg 'split h; exec xfce4-terminal'
sleep 0.2
i3-msg 'focus left; split v; exec xfce4-terminal'
sleep 0.2
i3-msg 'focus right; split v; exec xfce4-terminal'
