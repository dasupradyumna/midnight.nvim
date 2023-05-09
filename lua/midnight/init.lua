----------------------------------------- MIDNIGHT MODULE ------------------------------------------

local M = {}

---@type table<HLGroup, HLAttributes>[]? list of set of highlight groups
local hl_groups

function M.load()
  if hl_groups then return end
  if vim.g.colors_name then vim.cmd.highlight 'clear' end
  if vim.fn.exists 'syntax_on' then vim.cmd.syntax 'reset' end

  vim.o.termguicolors = true
  vim.g.colors_name = 'midnight'
  hl_groups = require 'midnight.highlight'
  for _, groups in ipairs(hl_groups) do
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

-- function M.setup(opts) end

return M
