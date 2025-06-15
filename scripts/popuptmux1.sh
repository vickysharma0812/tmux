#! /bin/bash

tmux_popup_session_name="[M-1]"

if [ "$(tmux display-message -p -F "#{session_name}")" = "${tmux_popup_session_name}" ];then
    tmux detach-client
else
    tmux popup -d '#{pane_current_path}' -xC -yC -w100% -h100% -E\
      "tmux new-session -A -s ${tmux_popup_session_name}"
fi
