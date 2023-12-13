---------------------------------------- COMMON HIGHLIGHTS -----------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  Bold = { style = 'bold' },
  Italic = { style = 'italic' },
  Underlined = { style = 'underline' },
  Strikethrough = { style = 'strikethrough' },

  Border = { fg = c.border },
  GitNew = { fg = p.green[4] },
  GitDirty = { fg = p.yellow[2] },
  GitRenamed = { fg = p.orange[2] },
  GitDeleted = { fg = p.red[3] },
  GitIgnored = { fg = c.comment },
  GitStaged = { fg = p.green[1] },
  GitMerge = { fg = p.teal[3] },

  FloatBorder = { link = 'Border' },
}
