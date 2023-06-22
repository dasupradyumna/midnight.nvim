########################################## MIDNIGHT THEME ##########################################
# TMUX port of midnight.nvim theme
# Author: Dasu Pradyumna [dasupradyumna@gmail.com]
# License: Apache 2.0
# [https://github.com/dasupradyumna/midnight.nvim/tree/main/extras/tmux/midnight.tmux]

set-window-option -g mode-style bg='#012749'
set-option -g message-style fg='#ff7279',bg='#080c10',NONE
set-option -g message-command-style fg='#080c10',bg='#ff7279',NONE

############################### statusline style ###############################

set-option -g status on
set-option -g status-justify left
set-option -g status-position top
set-option -g status-style fg='#878d96',bg='#080c10',NONE

set-option -g status-left ' #S ◥◣◥◣◥'
set-option -g status-left-style fg='#080c10',bg='#697077',bold
set-option -g status-left-length 25

set-option -g status-right-style bold
set-option -g status-right '#[fg=#ff7279]#{=27:host}#[fg=default] %H:%M %a %d %b %Y '
set-option -g status-right-length 50

################################# window style #################################

set-window-option -g window-active-style fg='#b5bdc5',bg='#080c10',NONE
set-window-option -g window-style fg='#b5bdc5',bg='#080c10',NONE

set-window-option -g window-status-current-style fg='#080c10',bg='#697077',bold
set-window-option -g window-status-current-format '◣ #W#{?window_zoomed_flag,*,} ◥'
set-window-option -g window-status-format \
  ' #{?window_last_flag,(#W#{?window_zoomed_flag,*,}), #W#{?window_zoomed_flag,*,} } '

set-window-option -g window-status-separator ''

############################## pane border style ###############################

set-window-option -g pane-active-border-style fg='#878d96',bg='#080c10',NONE
set-window-option -g pane-border-style fg='#393939',bg='#080c10',NONE
