---------------------------------- TODO-COMMENTS.NVIM HIGHLIGHTS -----------------------------------

local c = require('midnight.colors').components

return {
  TodoBgFix = { fg = c.bg, bg = c.error, style = 'bold' },
  TodoBgHack = { fg = c.bg, bg = c.warn, style = 'bold' },
  TodoBgNote = { fg = c.bg, bg = c.hint, style = 'bold' },
  TodoBgPerf = { fg = c.bg, bg = c.success, style = 'bold' },
  TodoBgTest = { fg = c.bg, bg = c.default, style = 'bold' },
  TodoBgTodo = { fg = c.bg, bg = c.info, style = 'bold' },
  TodoBgWarn = { fg = c.bg, bg = c.warn, style = 'bold' },
  TodoFgFix = { fg = c.error },
  TodoFgHack = { fg = c.warn },
  TodoFgNote = { fg = c.hint },
  TodoFgPerf = { fg = c.success },
  TodoFgTest = { fg = c.default },
  TodoFgTodo = { fg = c.info },
  TodoFgWarn = { fg = c.warn },
  TodoSignFix = { link = 'TodoFgFix' },
  TodoSignHack = { link = 'TodoFgHack' },
  TodoSignNote = { link = 'TodoFgNote' },
  TodoSignPerf = { link = 'TodoFgPerf' },
  TodoSignTest = { link = 'TodoFgTest' },
  TodoSignTodo = { link = 'TodoFgTodo' },
  TodoSignWarn = { link = 'TodoFgWarn' },
}
