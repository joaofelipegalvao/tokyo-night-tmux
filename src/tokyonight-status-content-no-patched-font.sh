#!/usr/bin/env bash

# Tokyo Night theme - Status bar sem ícones especiais
# Para terminais que não suportam Nerd Fonts
# Usando paleta Tokyo Night

# Verificar se a paleta foi carregada
if [ ${#PALLETE[@]} -eq 0 ]; then
  echo "Warning: Tokyo Night palette not loaded. Colors may not display correctly."
fi

# Obter os formatos de data e hora das variáveis de ambiente do tmux
DATE_FORMAT=$(tmux show-environment -g TOKYONIGHT_TMUX_STATUS_DATE_FORMAT 2>/dev/null | cut -d= -f2-)
TIME_FORMAT=$(tmux show-environment -g TOKYONIGHT_TMUX_STATUS_TIME_FORMAT 2>/dev/null | cut -d= -f2-)

# Fallback se as variáveis não existirem
DATE_FORMAT=${DATE_FORMAT:-"%Y-%m-%d"}
TIME_FORMAT=${TIME_FORMAT:-"%H:%M"}

#+----------------+
#+ Plugin Support +
#+----------------+
#+--- tmux-prefix-highlight ---+
tmux set -g @prefix_highlight_copy_mode_attr "fg=${PALLETE[bg]},bg=${PALLETE[magenta]}"

#+--------+
#+ Status +
#+--------+
#+--- Bars ---+
tmux set -g status-left "#[fg=${PALLETE[bg]},bg=${PALLETE[magenta]},bold] #S "
tmux set -g status-right "#{prefix_highlight}#[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]}] ${DATE_FORMAT} #[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]},nobold,noitalics,nounderscore]|#[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]}] ${TIME_FORMAT} #[fg=${PALLETE[magenta]},bg=${PALLETE[bg_highlight]},nobold,noitalics,nounderscore] #[fg=${PALLETE[bg]},bg=${PALLETE[magenta]},bold] #H "

#+--- Windows ---+
tmux set -g window-status-format " #[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]}]#I #[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]}]#W #F"
tmux set -g window-status-current-format " #[fg=${PALLETE[bg]},bg=${PALLETE[magenta]}]#I#[fg=${PALLETE[bg]},bg=${PALLETE[magenta]},nobold,noitalics,nounderscore] #[fg=${PALLETE[bg]},bg=${PALLETE[magenta]}]#W #F"
tmux set -g window-status-separator ""
