------------------------------------ MIDNIGHT EXTRAS GENERATOR -------------------------------------

vim.opt.rtp:append '.'

-- the core color palette
local colors = {
  p = require('midnight.colors').palette,
  c = require('midnight.colors').components,
}

-- map from extras to their config file extensions
local extra2ext = {
  tmux = 'tmux',
}

for extra, ext in pairs(extra2ext) do
  local folder = 'extras/' .. extra
  if vim.fn.isdirectory(folder) == 0 then os.execute('mkdir -p ' .. folder) end

  local filename = ('%s/midnight.%s'):format(folder, ext)
  local file = io.open(filename, 'w+')
  if not file then error(filename .. ' could not be opened. Please check.') end

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
