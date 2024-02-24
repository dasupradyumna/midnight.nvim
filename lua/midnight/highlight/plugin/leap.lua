--------------------------------------- LEAP.NVIM HIGHLIGHTS ---------------------------------------

local c = require('midnight.colors').components
local p = require('midnight.colors').palette

return {
  LeapMatch = { fg = p.red[3], style = 'bold,underline,nocombine' },
  LeapLabelPrimary = { fg = c.bg, bg = p.red[3] },
  LeapLabelSecondary = { link = 'IncSearch' },
}
