----------------------------------------- HELP HIGHLIGHTS ------------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  helpCommand = { fg = p.purple[2] },
  helpSpecial = { link = 'Parameter' },
  helpHeader = { fg = c.title },
  helpSectionDelim = { link = 'helpHeader' },
  helpHeadline = { link = 'helpHeader' },
  helpHyperTextEntry = { fg = c.tags },
  helpHyperTextJump = { fg = c.tags },
  helpError = { fg = c.error, style = 'bold' },
  helpWarning = { fg = c.warn, style = 'bold' },
  helpTodo = { fg = c.info, style = 'bold' },
  helpNote = { link = 'helpTodo' },
}
