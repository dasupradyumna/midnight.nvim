-------------------------------------- NVIM-DAP-UI HIGHLIGHTS --------------------------------------

local p = require('midnight.palette').palette
local c = require('midnight.palette').components

return {
  DapUINormal = { link = 'Normal' },
  DapUICustomFG = { fg = p.cyan[3] },
  DapUIScope = { link = 'DapUICustomFG' },
  DapUIDecoration = { link = 'DapUICustomFG' },
  DapUIType = { link = 'Type' },
  DapUILineNumber = { link = 'Operator' },
  DapUIVariable = { link = 'Identifier' },
  DapUIValue = { link = 'Parameter' },
  DapUIModifiedValue = { fg = c.string, bg = p.cyan[5] },
  DapUIWatchesEmpty = { fg = c.error },
  DapUIWatchesValue = { link = 'DapUICustomFG' },
  DapUIStoppedThread = { link = 'DapUICustomFG' },
  DapUIFrameName = { link = 'Function' },
  DapUISource = { link = 'Identifier' },
  DapUIBreakpointsPath = { link = 'DapUICustomFG' },
  DapUIBreakpointsInfo = { link = 'Type' },
}
