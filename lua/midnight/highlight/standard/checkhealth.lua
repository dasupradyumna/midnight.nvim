-------------------------------------- CHECKHEALTH HIGHLIGHTS --------------------------------------

local c = require('midnight.colors').components

return {
  healthError = { fg = c.error, style = 'bold' },
  healthWarning = { fg = c.warn, style = 'bold' },
  healthSuccess = { fg = c.success, style = 'bold' },
}
