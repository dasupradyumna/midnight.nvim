---------------------------------------- HIGHLIGHTS MODULE -----------------------------------------

return {
  require 'midnight.highlight.common',
  require 'midnight.highlight.builtin',
  require 'midnight.highlight.treesitter',
  -- standard
  require 'midnight.highlight.standard.syntax',
  require 'midnight.highlight.standard.diagnostics',
  require 'midnight.highlight.standard.help',
  require 'midnight.highlight.standard.checkhealth',
  require 'midnight.highlight.standard.git',
  require 'midnight.highlight.standard.diff',
  -- semantic
  require 'midnight.highlight.semantic.cmake',
  require 'midnight.highlight.semantic.cpp',
  require 'midnight.highlight.semantic.lua',
  require 'midnight.highlight.semantic.markdown',
  require 'midnight.highlight.semantic.neorg',
  require 'midnight.highlight.semantic.python',
  require 'midnight.highlight.semantic.rust',
  require 'midnight.highlight.semantic.vim',
  -- plugins
  require 'midnight.highlight.plugin.lazy',
  require 'midnight.highlight.plugin.nvim-tree',
  require 'midnight.highlight.plugin.gitsigns',
  require 'midnight.highlight.plugin.diffview',
  require 'midnight.highlight.plugin.telescope',
  require 'midnight.highlight.plugin.nvim-lspconfig',
  require 'midnight.highlight.plugin.todo-comments',
  require 'midnight.highlight.plugin.mason',
  require 'midnight.highlight.plugin.nvim-dap-ui',
  require 'midnight.highlight.plugin.nvim-cmp',
  require 'midnight.highlight.plugin.vim-illuminate',
  require 'midnight.highlight.plugin.nvim-notify',
  require 'midnight.highlight.plugin.leap',
}
