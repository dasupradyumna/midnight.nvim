--------------------------------------- NVIM-CMP HIGHLIGHTS ----------------------------------------

local p = require('midnight.colors').palette
local c = require('midnight.colors').components

return {
  CmpItemAbbr = { fg = p.gray[4] },
  CmpItemAbbrDeprecated = { fg = c.comment, style = 'strikethrough' },
  CmpItemAbbrMatch = { fg = p.red[3] },
  CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },
  CmpItemMenu = { fg = c.comment },
  CmpItemKind = { clear = true },
  CmpItemKindClass = { fg = c.type },
  CmpItemKindColor = { fg = p.red[3] }, --------------
  CmpItemKindConstant = { fg = c.constant },
  CmpItemKindConstructor = { fg = c.type },
  CmpItemKindEnum = { fg = c.type },
  CmpItemKindEnumMember = { fg = c.field },
  CmpItemKindEvent = { fg = p.red[3] }, --------------
  CmpItemKindField = { fg = c.field },
  CmpItemKindFile = { fg = c.string },
  CmpItemKindFolder = { fg = c.string },
  CmpItemKindFunction = { fg = c.method },
  CmpItemKindInterface = { fg = c.type },
  CmpItemKindKeyword = { fg = c.keyword },
  CmpItemKindMethod = { fg = c.method },
  CmpItemKindModule = { fg = c.namespace },
  CmpItemKindOperator = { fg = c.operator },
  CmpItemKindProperty = { fg = c.field },
  CmpItemKindReference = { fg = c.type },
  CmpItemKindSnippet = { fg = c.literal },
  CmpItemKindStruct = { fg = c.type },
  CmpItemKindText = { fg = c.comment },
  CmpItemKindTypeParameter = { fg = c.parameter },
  CmpItemKindUnit = { fg = p.red[3] }, --------------
  CmpItemKindValue = { fg = c.parameter },
  CmpItemKindVariable = { fg = c.variable },
}
