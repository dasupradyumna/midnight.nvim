--------------------------------------- TMUX EXTRA TEMPLATE ----------------------------------------

return [[
set-window-option -g mode-style bg='${c.visual}'
set-option -g message-style fg='${c.operator}',bg='${c.bg}',NONE
set-option -g message-command-style fg='${c.bg}',bg='${c.operator}',NONE

############################### statusline style ###############################

set-option -g status on
set-option -g status-justify left
set-option -g status-position top
set-option -g status-style fg='${c.comment}',bg='${c.bg}',NONE

set-option -g status-left ' #S ◥◣◥◣◥'
set-option -g status-left-style fg='${c.bg}',bg='${c.tabsel}',bold
set-option -g status-left-length 25

set-option -g status-right-style bold
set-option -g status-right '#[fg=${c.operator}]#{=27:host}#[fg=default] %H:%M %a %d %b %Y '
set-option -g status-right-length 50

################################# window style #################################

set-window-option -g window-active-style fg='${c.fg}',bg='${c.bg}',NONE
set-window-option -g window-style fg='${c.fg}',bg='${c.bg}',NONE

set-window-option -g window-status-current-style fg='${c.bg}',bg='${c.tabsel}',bold
set-window-option -g window-status-current-format '◣ #W#{?window_zoomed_flag,*,} ◥'
set-window-option -g window-status-format \
  ' #{?window_last_flag,(#W#{?window_zoomed_flag,*,}), #W#{?window_zoomed_flag,*,} } '

set-window-option -g window-status-separator ''

############################## pane border style ###############################

set-window-option -g pane-active-border-style fg='${c.comment}',bg='${c.bg}',NONE
set-window-option -g pane-border-style fg='${c.border}',bg='${c.bg}',NONE
]]
