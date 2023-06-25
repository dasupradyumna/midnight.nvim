------------------------------------ MIDNIGHT EXTRAS GENERATOR -------------------------------------

vim.opt.rtp:append '.'

-- the core color palette
local colors = {
  c = require('midnight.colors').components,
  p = require('midnight.colors').palette,
  t = require('midnight.colors').terminal,
}

-- dictionary holding the metadata for all the extras
local extras = {
  ['gnome-terminal'] = { ext = 'sh', name = 'GNOME Terminal' },
  kitty = { ext = 'conf', name = 'Kitty' },
  tmux = { ext = 'tmux', name = 'TMUX' },
}

local header_template = [[
########################################## MIDNIGHT THEME ##########################################
# %s port of midnight.nvim theme
# Author: Dasu Pradyumna [dasupradyumna@gmail.com]
# License: Apache 2.0
# [https://github.com/dasupradyumna/midnight.nvim/tree/main/%s]

]]

for extra, meta in pairs(extras) do
  -- ensure the extra folder exists
  local folder = 'extras/' .. extra
  if vim.fn.isdirectory(folder) == 0 then os.execute('mkdir -p ' .. folder) end

  -- ensure the extra file is writable
  local filepath = ('%s/midnight.%s'):format(folder, meta.ext)
  local file = io.open(filepath, 'w+')
  if not file then error(filepath .. ' could not be opened. Please check.') end

  -- add header
  file:write(header_template:format(meta.name, filepath))

  -- substitute all the color codes in the extras file content
  local content = require('midnight.extras.' .. extra)
  content = content:gsub('%${(.-)}', function(color_code)
    -- split: [1] = 'p'/'c', [2] = color name, [3] = integer index if [1] = 'p' else nil
    local split = vim.split(color_code, '.', { plain = true, trimempty = true })
    ---@diagnostic disable-next-line:assign-type-mismatch
    split[3] = split[3] and tonumber(split[3]) or nil
    return vim.tbl_get(colors, unpack(split))
  end)
  file:write(content)

  file:close()
end

vim.cmd.quit()
