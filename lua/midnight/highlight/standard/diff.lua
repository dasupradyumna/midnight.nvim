----------------------------------------- DIFF HIGHLIGHTS ------------------------------------------

local p = require('midnight.colors').palette

return {
  diffAdded = { link = 'DiffAdd' },
  diffChanged = { link = 'DiffChange' },
  diffRemoved = { link = 'DiffDelete' },
  diffOldFile = { link = 'GitDeleted' },
  diffNewFile = { link = 'GitNew' },
  diffFile = { link = 'Directory' },
  diffLine = { link = 'Bold' },
  diffIndexLine = { fg = p.purple[1] },
  diffSubName = { fg = p.magenta[2] },
}
