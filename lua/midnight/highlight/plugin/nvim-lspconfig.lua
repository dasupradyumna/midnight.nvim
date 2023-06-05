------------------------------------ NVIM-LSPCONFIG HIGHLIGHTS -------------------------------------

local p = require('midnight.palette').palette

return {
  LspInfoList = { fg = p.blue[3] },
  LspInfoFiletype = { fg = p.red[2] },
  LspInfoBorder = { link = 'Border' },
}
