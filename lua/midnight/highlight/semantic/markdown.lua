--------------------------------------- MARKDOWN HIGHLIGHTS ----------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  markdownCode = { fg = c.operator, bg = p.gray[8] },
  ['@punctuation.special.markdown'] = { fg = c.comment },
}
