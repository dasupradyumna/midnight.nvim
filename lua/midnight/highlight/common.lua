---------------------------------------- COMMON HIGHLIGHTS -----------------------------------------

local p = require('midnight.palette').palette
local c = require('midnight.palette').components

return {
  Bold = { style = 'bold' },
  Italic = { style = 'italic' },
  Underlined = { style = 'underline' },
  Strikethrough = { style = 'strikethrough' },

  Border = { fg = p.gray[8] },
  Select = { bg = p.cyan[5] },

  GitNew = { fg = p.green[4] },
  GitDirty = { fg = p.yellow[2] },
  GitRenamed = { fg = p.orange[2] },
  GitDeleted = { fg = p.red[3] },
  GitIgnored = { fg = c.comment },
  GitStaged = { fg = p.green[1] },
  GitMerge = { fg = p.teal[3] }, -- TEST: during a merge
}
