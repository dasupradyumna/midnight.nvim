------------------------------- DEFAULT TREESITTER & LSP HIGHLIGHTS --------------------------------

local c = require('midnight.colors').components
local p = require('midnight.colors').palette

return {
  -- identifiers
  ['@variable'] = { link = 'Identifier' },
  ['@variable.builtin'] = { link = 'Keyword' },
  ['@variable.member'] = { link = 'Field' },
  ['@variable.parameter'] = { link = 'Parameter' },

  ['@constant'] = { link = 'Constant' },
  ['@constant.builtin'] = { link = 'Constant' },
  ['@constant.macro'] = { link = 'PreProc' },

  ['@module'] = { link = 'Namespace' },
  ['@module.builtin'] = { link = 'Namespace' },

  ['@label'] = { link = 'Operator' },

  -- literals
  ['@string'] = { link = 'String' },
  ['@string.documentation'] = { link = 'Comment' },
  ['@string.escape'] = { link = 'Operator' },
  ['@string.regexp'] = { link = 'PreProc' },
  ['@string.special'] = { link = 'String' },
  ['@string.special.url'] = { fg = c.namespace, style = 'underline' },

  ['@character'] = { link = 'String' },
  ['@character.special'] = { link = 'PreProc' },

  ['@boolean'] = { link = 'Constant' },
  ['@number'] = { link = 'Constant' },
  ['@number.float'] = { link = 'Constant' },

  -- types
  ['@type'] = { link = 'Type' },
  ['@type.builtin'] = { link = 'Keyword' },
  ['@type.definition'] = { link = 'Type' },
  ['@type.qualifier'] = { link = 'Operator' },

  ['@attribute'] = { link = 'Operator' },
  ['@property'] = { link = 'Field' },

  -- functions
  ['@function'] = { link = 'Function' },
  ['@function.builtin'] = { link = 'Function' },
  ['@function.call'] = { link = 'Function' },
  ['@function.macro'] = { link = 'PreProc' },
  ['@function.method'] = { link = 'Function' },
  ['@function.method.call'] = { link = 'Function' },

  ['@operator'] = { link = 'Operator' },

  -- keywords
  ['@keyword'] = { link = 'Keyword' },
  ['@keyword.conditional.ternary'] = { link = 'Operator' },
  ['@keyword.directive'] = { link = 'PreProc' },
  ['@keyword.directive.define'] = { link = 'Operator' },
  ['@keyword.import'] = { link = 'Operator' },
  ['@keyword.operator'] = { link = 'Operator' },
  ['@keyword.storage'] = { link = 'Operator' },

  -- punctuation
  ['@punctuation.delimiter'] = { link = 'Delimiter' },
  ['@punctuation.bracket'] = { link = 'Delimiter' },
  ['@punctuation.special'] = { link = 'Operator' },

  -- comments
  ['@comment'] = { link = 'Comment' },
  ['@comment.error'] = { fg = c.error },
  ['@comment.warning'] = { fg = c.warn },
  ['@comment.todo'] = { fg = c.info },
  ['@comment.note'] = { fg = c.hint },

  -- markup
  ['@markup.italic'] = { link = 'Italic' },
  ['@markup.strikethrough'] = { link = 'Strikethrough' },
  ['@markup.strong'] = { link = 'Bold' },
  ['@markup.underline'] = { link = 'Underlined' },

  ['@markup.heading'] = { link = 'Title' },
  ['@markup.link'] = { fg = p.purple[2], style = 'underline' },

  ['@markup.quote'] = { fg = c.comment },
  ['@markup.math'] = { link = 'Field' },
  ['@markup.environment'] = { link = 'Type' },

  ['@markup.raw'] = { fg = c.operator, bg = p.gray[8] },
  ['@markup.raw.block'] = { fg = c.comment },
  ['@markup.raw.delimiter'] = { fg = c.fg },

  ['@markup.list'] = { link = 'Parameter' },
  ['@markup.list.checked'] = { fg = c.success },
  ['@markup.list.unchecked'] = { fg = c.error },

  -- diff
  ['@diff.plus'] = { link = 'DiffAdd' },
  ['@diff.minus'] = { link = 'DiffDelete' },
  ['@diff.delta'] = { link = 'DiffChange' },

  -- tags
  ['@tag'] = { link = 'Parameter' },
  ['@tag.attribute'] = { link = 'Field' },
  ['@tag.delimiter'] = { link = 'Operator' },
}
