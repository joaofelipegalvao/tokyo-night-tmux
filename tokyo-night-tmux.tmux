#!/usr/bin/env bash

# Tokyo Night theme loader para tmux
# Baseado no estrutura do Nord

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Arquivos do tema
THEME_BASE_FILE="$CURRENT_DIR/src/tokyonight.conf"
THEME_STATUS_FILE="$CURRENT_DIR/src/tokyonight-status-content.conf"
THEME_STATUS_NO_FONT_FILE="$CURRENT_DIR/src/tokyonight-status-content-no-patched-font.conf"

# Opções
SHOW_STATUS_CONTENT_OPTION="@tokyonight_show_status_content"
NO_PATCHED_FONT_OPTION="@tokyonight_no_patched_font"

__cleanup() {
  unset -v CURRENT_DIR THEME_BASE_FILE THEME_STATUS_FILE THEME_STATUS_NO_FONT_FILE
  unset -v SHOW_STATUS_CONTENT_OPTION NO_PATCHED_FONT_OPTION
  unset -f __load __cleanup
}

__load() {
  # Carrega as cores base
  tmux source-file "$THEME_BASE_FILE"

  # Verifica as opções
  local status_content=$(tmux show-option -gqv "$SHOW_STATUS_CONTENT_OPTION")
  local no_patched_font=$(tmux show-option -gqv "$NO_PATCHED_FONT_OPTION")

  # Carrega o conteúdo da status bar se habilitado (padrão: sim)
  if [ "$status_content" != "0" ]; then
    if [ "$no_patched_font" != "1" ]; then
      # Com ícones (Nerd Font)
      tmux source-file "$CURRENT_DIR/$THEME_STATUS_FILE"
    else
      # Sem ícones
      tmux source-file "$CURRENT_DIR/$THEME_STATUS_NO_FONT_FILE"
    fi
  fi
}

__load
__cleanup
