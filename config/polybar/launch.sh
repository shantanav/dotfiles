#!/usr/bin/bash
killall -q polybar
echo "---" | /tmp/polybar1.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Polybar launched..."
