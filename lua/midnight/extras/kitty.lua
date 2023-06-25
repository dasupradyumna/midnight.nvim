--------------------------------------- KITTY EXTRA TEMPLATE ---------------------------------------

return [[
################################### general ####################################

foreground ${c.fg}
background ${c.bg}
selection_foreground ${c.fg}
selection_background ${c.visual}
url_color ${p.purple.1}
cursor none

################################ window borders ################################

active_border_color ${c.comment}
inactive_border_color ${c.border}
bell_border_color ${c.warn}

################################# tab titlebar #################################

active_tab_foreground ${c.bg}
active_tab_background ${c.tabsel}
inactive_tab_foreground ${c.comment}
inactive_tab_background ${c.bg}

############################# terminal 16-palette ##############################

# default version
color0 ${t.black.1}
color1 ${t.red.1}
color2 ${t.green.1}
color3 ${t.yellow.1}
color4 ${t.blue.1}
color5 ${t.purple.1}
color6 ${t.cyan.1}
color7 ${t.white.1}

# bright version
color8 ${t.black.2}
color9 ${t.red.2}
color10 ${t.green.2}
color11 ${t.yellow.2}
color12 ${t.blue.2}
color13 ${t.purple.2}
color14 ${t.cyan.2}
color15 ${t.white.2}
]]
