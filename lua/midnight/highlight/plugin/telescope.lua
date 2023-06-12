------------------------------------ TELESCOPE.NVIM HIGHLIGHTS -------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  TelescopeTitle = { fg = c.fg },
  TelescopeBorder = { link = 'Border' },
  TelescopeMatching = { link = 'Search' },
  TelescopeMultiIcon = { fg = p.cyan[1] },
  TelescopeMultiSelection = { fg = p.purple[3], style = 'bold,italic' },
  TelescopeResultsSpecialComment = { fg = c.comment },
  TelescopeResultsIdentifier = { fg = p.purple[1] },
  TelescopeResultsConstant = { fg = p.cyan[1], style = 'italic' },
  TelescopeResultsLineNr = { fg = p.red[2] },
}
