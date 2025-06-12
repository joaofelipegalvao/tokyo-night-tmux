#!/usr/bin/env bash

# Copyright (c) 2025 - Tokyo Night theme for tmux

TOKYONIGHT_TMUX_COLOR_THEME_FILE=src/tokyonight.conf
TOKYONIGHT_TMUX_VERSION=1.0.0
TOKYONIGHT_TMUX_STATUS_CONTENT_FILE="src/tokyonight-status-content.conf"
TOKYONIGHT_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE="src/tokyonight-status-content-no-patched-font.conf"
TOKYONIGHT_TMUX_STATUS_CONTENT_OPTION="@tokyonight_show_status_content"
TOKYONIGHT_TMUX_STATUS_CONTENT_DATE_FORMAT="@tokyonight_date_format"
TOKYONIGHT_TMUX_NO_PATCHED_FONT_OPTION="@tokyonight_no_patched_font"
_current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

__cleanup() {
  unset -v TOKYONIGHT_TMUX_COLOR_THEME_FILE TOKYONIGHT_TMUX_VERSION
  unset -v TOKYONIGHT_TMUX_STATUS_CONTENT_FILE TOKYONIGHT_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE
  unset -v TOKYONIGHT_TMUX_STATUS_CONTENT_OPTION TOKYONIGHT_TMUX_NO_PATCHED_FONT_OPTION
  unset -v TOKYONIGHT_TMUX_STATUS_CONTENT_DATE_FORMAT
  unset -v _current_dir
  unset -f __load __cleanup
  tmux set-environment -gu TOKYONIGHT_TMUX_STATUS_TIME_FORMAT
  tmux set-environment -gu TOKYONIGHT_TMUX_STATUS_DATE_FORMAT
}

__load() {
  tmux source-file "$_current_dir/$TOKYONIGHT_TMUX_COLOR_THEME_FILE"

  local status_content=$(tmux show-option -gqv "$TOKYONIGHT_TMUX_STATUS_CONTENT_OPTION")
  local no_patched_font=$(tmux show-option -gqv "$TOKYONIGHT_TMUX_NO_PATCHED_FONT_OPTION")
  local date_format=$(tmux show-option -gqv "$TOKYONIGHT_TMUX_STATUS_CONTENT_DATE_FORMAT")

  if [ "$(tmux show-option -gqv "clock-mode-style")" == '12' ]; then
    tmux set-environment -g TOKYONIGHT_TMUX_STATUS_TIME_FORMAT "%I:%M %p"
  else
    tmux set-environment -g TOKYONIGHT_TMUX_STATUS_TIME_FORMAT "%H:%M"
  fi

  if [ -z "$date_format" ]; then
    tmux set-environment -g TOKYONIGHT_TMUX_STATUS_DATE_FORMAT "%Y-%m-%d"
  else
    tmux set-environment -g TOKYONIGHT_TMUX_STATUS_DATE_FORMAT "$date_format"
  fi

  if [ "$status_content" != "0" ]; then
    if [ "$no_patched_font" != "1" ]; then
      tmux source-file "$_current_dir/$TOKYONIGHT_TMUX_STATUS_CONTENT_FILE"
    else
      tmux source-file "$_current_dir/$TOKYONIGHT_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE"
    fi
  fi
}

__load
__cleanup
