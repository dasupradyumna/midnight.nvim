------------------------------------------- NVIM-NOTIFY --------------------------------------------

local c = require('midnight.colors').components

return {
  NotifyLogTitle = { link = 'Title' },

  NotifyERRORBorder = { fg = c.error },
  NotifyERRORIcon = { fg = c.error },
  NotifyERRORTitle = { fg = c.error, style = 'bold' },
  NotifyERRORBody = { fg = c.error },

  NotifyWARNBorder = { fg = c.warn },
  NotifyWARNIcon = { fg = c.warn },
  NotifyWARNTitle = { fg = c.warn, style = 'bold' },
  NotifyWARNBody = { fg = c.warn },

  NotifyINFOBorder = { fg = c.info },
  NotifyINFOIcon = { fg = c.info },
  NotifyINFOTitle = { fg = c.info, style = 'bold' },
  NotifyINFOBody = { fg = c.info },

  NotifyDEBUGBorder = { fg = c.hint },
  NotifyDEBUGIcon = { fg = c.hint },
  NotifyDEBUGTitle = { fg = c.hint, style = 'bold' },
  NotifyDEBUGBody = { fg = c.hint },

  NotifyTRACEBorder = { fg = c.ok },
  NotifyTRACEIcon = { fg = c.ok },
  NotifyTRACETitle = { fg = c.ok, style = 'bold' },
  NotifyTRACEBody = { fg = c.ok },
}
