------------------------------------------ CONFIGURATION -------------------------------------------

local M = {}

---@type boolean whether highlights have been loaded or not
M.loaded = false

---@type table<HLGroup, HLAttributes>[] list of set of highlight groups
M.highlights = {}

function M.load_highlights()
  M.highlights = require 'midnight.highlight'
  M.loaded = true
end

return M
