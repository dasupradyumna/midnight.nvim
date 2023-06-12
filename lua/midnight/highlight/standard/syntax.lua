---------------------------------------- SYNTAX HIGHLIGHTS -----------------------------------------

local c = require('midnight.colors').components

return {
  Comment = { fg = c.comment, style = 'italic' },
  Conditional = { fg = c.keyword },
  Constant = { fg = c.constant },
  Delimiter = { fg = c.fg },
  Error = { fg = c.error },
  Field = { fg = c.field },
  Function = { fg = c.method },
  Identifier = { fg = c.variable },
  Include = { fg = c.operator },
  Keyword = { fg = c.keyword },
  Namespace = { fg = c.namespace },
  Operator = { fg = c.operator },
  Parameter = { fg = c.parameter },
  PreProc = { fg = c.literal },
  Repeat = { fg = c.keyword },
  Special = { link = 'PreProc' },
  Statement = { link = 'Operator' },
  Todo = { fg = c.info },
  String = { fg = c.string },
  Type = { fg = c.type },
  Warn = { fg = c.warn },
}
