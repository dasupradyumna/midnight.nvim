--------------------------------------- LAZY.NVIM HIGHLIGHTS ---------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  LazyH1 = { fg = c.bg, bg = p.cyan[3] },
  LazyH2 = { fg = p.cyan[3], style = 'bold' },
  LazySpecial = { fg = p.cyan[3] },
  LazyProp = { link = 'LazySpecial' },
  LazyValue = { fg = p.yellow[1] },
  LazyDir = { link = 'Directory' },
  LazyUrl = { fg = p.purple[1] },
  LazyCommit = { link = 'LazyUrl' },
  LazyCommitType = { fg = p.green[2] },
  LazyCommitIssue = { fg = p.magenta[1] },
  LazyComment = { fg = c.comment },
  LazyButton = { bg = c.bg },
  LazyButtonActive = { bg = c.visual },
  LazyReasonPlugin = { link = 'LazySpecial' },
  LazyReasonSource = { link = 'String' },
  LazyReasonImport = { link = 'LazyReasonSource' },
  LazyReasonRuntime = { link = 'LazyReasonSource' },
  LazyReasonStart = { fg = c.tags },
  LazyReasonEvent = { link = 'LazyReasonStart' },
  LazyReasonKeys = { fg = p.teal[1] },
  LazyReasonCmd = { link = 'LazyReasonKeys' },
}
