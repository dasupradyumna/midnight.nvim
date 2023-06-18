----------------------------------------- MIDNIGHT MODULE ------------------------------------------

local config = require 'midnight.config'

local M = {}

function M.load()
  if not config.loaded then M.setup() end

  if vim.g.colors_name then vim.cmd.highlight 'clear' end
  if vim.fn.exists 'syntax_on' then vim.cmd.syntax 'reset' end

  vim.o.termguicolors = true
  vim.g.colors_name = 'midnight'
  for _, groups in ipairs(config.highlights) do
    for hi_name, highlight in pairs(groups) do
      if highlight.clear then
        vim.cmd(('highlight clear %s'):format(hi_name))
      elseif highlight.link then
        vim.cmd(('highlight! link %s %s'):format(hi_name, highlight.link))
      else
        local style = 'gui=' .. (highlight.style or 'NONE')
        local fg = 'guifg=' .. (highlight.fg or 'NONE')
        local bg = 'guibg=' .. (highlight.bg or 'NONE')
        local sp = 'guisp=' .. (highlight.sp or 'NONE')
        vim.cmd(('highlight! %s %s %s %s %s'):format(hi_name, style, fg, bg, sp))
      end
    end
  end
end

---setup method that takes override highlight groups
---@param opts table<HLGroup, HLAttributes>? set of override highlight groups
function M.setup(opts)
  config.load_highlights()
  table.insert(config.highlights, opts)
end

return M
