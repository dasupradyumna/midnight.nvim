-------------------------------------- MASON.NVIM HIGHLIGHTS ---------------------------------------

local p = require('midnight.palette').palette
local c = require('midnight.palette').components

return {
  MasonHeader = { fg = c.bg, bg = p.cyan[3], style = 'bold' },
  MasonHeaderSecondary = { link = 'MasonHeader' },
  MasonHighlight = { fg = p.cyan[3] },
  MasonHighlightSecondary = { link = 'MasonHighlight' },
  MasonHighlightBlock = { link = 'MasonHeader' },
  MasonHighlightBlockSecondary = { link = 'MasonHeader' },
  MasonHighlightBlockBold = { link = 'MasonHeader' },
  MasonHighlightBlockBoldSecondary = { link = 'MasonHeader' },
  MasonMuted = { fg = c.comment },
  MasonMutedBlock = { bg = c.bg },
  MasonMutedBlockBold = { bg = c.bg, style = 'bold' },
}
