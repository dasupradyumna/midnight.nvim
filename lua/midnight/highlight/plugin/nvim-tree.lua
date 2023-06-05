------------------------------------- NVIM-TREE.LUA HIGHLIGHTS -------------------------------------

local p = require('midnight.palette').palette

return {
  NvimTreeRootFolder = { fg = p.purple[2], style = 'bold' },
  NvimTreeIndentMarker = { link = 'Border' },
  NvimTreeBookmark = { fg = p.cyan[1] },
  NvimTreeOpenedFile = { style = 'italic' },
  NvimTreeModifiedFile = { fg = p.cyan[1] },
  NvimTreeGitNew = { link = 'GitNew' },
  NvimTreeGitDirty = { link = 'GitDirty' },
  NvimTreeGitRenamed = { link = 'GitRenamed' },
  NvimTreeGitDeleted = { link = 'GitDeleted' },
  NvimTreeGitIgnored = { link = 'GitIgnored' },
  NvimTreeGitStaged = { link = 'GitStaged' },
  NvimTreeGitMerge = { link = 'GitMerge' },
  NvimTreeSpecialFile = { fg = p.magenta[1], style = 'italic' },
  NvimTreeExecFile = { link = 'NvimTreeSpecialFile' },
  NvimTreeImageFile = { link = 'NvimTreeSpecialFile' },
  NvimTreeSymlink = { fg = p.purple[4], style = 'italic' },
  NvimTreeLiveFilterValue = { link = 'Bold' },
  NvimTreeLiveFilterPrefix = { fg = p.cyan[2], style = 'bold' },
  NvimTreeWindowPicker = { fg = p.blue[1], bg = p.cyan[5], style = 'bold' },
}
