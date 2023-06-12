-------------------------------------- DIAGNOSTICS HIGHLIGHTS --------------------------------------

local c = require('midnight.colors').components

return {
  DiagnosticError = { fg = c.error, style = 'italic' },
  DiagnosticWarn = { fg = c.warn, style = 'italic' },
  DiagnosticInfo = { fg = c.info, style = 'italic' },
  DiagnosticHint = { fg = c.hint, style = 'italic' },
  DiagnosticOk = { fg = c.success, style = 'italic' },
}
