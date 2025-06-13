#!/usr/bin/env bash

# Tokyo Night theme - Cores base usando paleta

# Verificar se a paleta foi carregada
if [ ${#PALLETE[@]} -eq 0 ]; then
  echo "Warning: Tokyo Night palette not loaded. Colors may not display correctly."
fi

#+----------------+
#+ Plugin Support +
#+----------------+
#+--- tmux-prefix-highlight ---+
tmux set -g @prefix_highlight_fg "${PALLETE[bg]}"
tmux set -g @prefix_highlight_bg "${PALLETE[magenta]}"

#+---------+
#+ Options +
#+---------+
tmux set -g status-interval 1
tmux set -g status on

#+--------+
#+ Status +
#+--------+
#+--- Layout ---+
tmux set -g status-justify left

#+--- Colors ---+
tmux set -g status-style "bg=${PALLETE[bg]},fg=${PALLETE[fg]}"

#+-------+
#+ Panes +
#+-------+
tmux set -g pane-border-style "bg=default,fg=${PALLETE[fg_gutter]}"
tmux set -g pane-active-border-style "bg=default,fg=${PALLETE[magenta]}"
tmux set -g display-panes-colour "${PALLETE[bg]}"
tmux set -g display-panes-active-colour "${PALLETE[fg_gutter]}"

#+------------+
#+ Clock Mode +
#+------------+
tmux setw -g clock-mode-colour "${PALLETE[magenta]}"

#+----------+
#+ Messages +
#+---------+
tmux set -g message-style "bg=${PALLETE[bg_highlight]},fg=${PALLETE[magenta]}"
tmux set -g message-command-style "bg=${PALLETE[bg_highlight]},fg=${PALLETE[magenta]}"
