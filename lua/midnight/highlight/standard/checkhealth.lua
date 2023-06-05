-------------------------------------- CHECKHEALTH HIGHLIGHTS --------------------------------------

local c = require('midnight.palette').components

return {
  healthError = { fg = c.error, style = 'bold' },
  healthWarning = { fg = c.warn, style = 'bold' },
  healthSuccess = { fg = c.success, style = 'bold' },
}
