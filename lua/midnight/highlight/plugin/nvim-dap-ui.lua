-------------------------------------- NVIM-DAP-UI HIGHLIGHTS --------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  DapUINormal = { link = 'Normal' },
  DapUICustomFG = { fg = p.cyan[3] },
  DapUIScope = { link = 'DapUICustomFG' },
  DapUIDecoration = { link = 'DapUICustomFG' },
  DapUIType = { link = 'Type' },
  DapUILineNumber = { link = 'Operator' },
  DapUIVariable = { link = 'Identifier' },
  DapUIValue = { link = 'Parameter' },
  DapUIModifiedValue = { fg = c.string, bg = c.visual },
  DapUIWatchesEmpty = { fg = c.error },
  DapUIWatchesError = { fg = c.error },
  DapUIWatchesValue = { link = 'DapUICustomFG' },
  DapUIStoppedThread = { link = 'DapUICustomFG' },
  DapUIFrameName = { link = 'Function' },
  DapUICurrentFrameName = { fg = c.method, style = 'bold,italic' },
  DapUISource = { link = 'Identifier' },
  DapUIBreakpointsPath = { link = 'DapUICustomFG' },
  DapUIBreakpointsInfo = { link = 'Type' },
  DapUIBreakpointsLine = { link = 'Operator' },
  DapUIBreakpointsCurrentLine = { fg = c.operator, style = 'bold,italic' },
}
