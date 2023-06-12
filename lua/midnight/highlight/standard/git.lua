------------------------------------------ GIT HIGHLIGHTS ------------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  gitCommitHeader = { link = 'Title' },
  gitCommitBranch = { fg = p.purple[2], style = 'bold' },
  gitCommitSummary = { link = 'Parameter' },
  gitCommitBlank = { clear = true },
  gitCommitSelectedFile = { fg = c.success },
  gitCommitSelectedType = { fg = c.success },
  gitCommitDiscardedFile = { fg = c.error },
  gitCommitDiscardedType = { fg = c.error },
  gitCommitUntrackedFile = { fg = p.gray[2] },
  gitIgnorePattern = { link = 'Identifier' },
}
