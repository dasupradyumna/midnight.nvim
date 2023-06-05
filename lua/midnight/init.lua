----------------------------------------- MIDNIGHT MODULE ------------------------------------------

local M = {}

---@type table<HLGroup, HLAttributes>[]? list of set of highlight groups
local hl_groups

function M.load()
  if not hl_groups then M.setup() end

  if vim.g.colors_name then vim.cmd.highlight 'clear' end
  if vim.fn.exists 'syntax_on' then vim.cmd.syntax 'reset' end

  vim.o.termguicolors = true
  vim.g.colors_name = 'midnight'
  for _, groups in ipairs(hl_groups) do ---@diagnostic disable-line: param-type-mismatch
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
  hl_groups = require 'midnight.highlight'
  table.insert(hl_groups, opts or {})
end

return M
