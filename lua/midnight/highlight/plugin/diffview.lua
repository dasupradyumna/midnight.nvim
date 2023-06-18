------------------------------------- DIFFVIEW.NVIM HIGHLIGHTS -------------------------------------

local p = require('midnight.colors').palette

return {
  DiffviewDim1 = { fg = p.gray[5] },
  DiffviewReference = { fg = p.cyan[1], style = 'italic' },
  DiffviewPrimary = { fg = p.cyan[1] },
  DiffviewSecondary = { fg = p.teal[2] },
  DiffviewNonText = { link = 'DiffviewDim1' },
  DiffviewStatusUnmerged = { link = 'GitMerge' },
  DiffviewStatusUntracked = { link = 'GitNew' },
  DiffviewStatusModified = { link = 'GitDirty' },
  DiffviewStatusRenamed = { link = 'GitRenamed' },
  DiffviewStatusDeleted = { link = 'GitDeleted' },
  DiffviewStatusAdded = { link = 'GitStaged' },
  DiffviewFilePanelRootPath = { link = 'NvimTreeRootFolder' },
  DiffviewFilePanelTitle = { link = 'Title' },
  DiffviewFilePanelCounter = { fg = p.cyan[1] },
  DiffviewFilePanelSelected = { style = 'bold,italic' },
  DiffviewFilePanelInsertions = { link = 'GitNew' },
  DiffviewFilePanelDeletions = { link = 'GitDeleted' },
  DiffviewFilePanelConflicts = { link = 'GitMerge' },
  DiffviewFolderSign = { link = 'NvimTreeFolderIcon' },
  DiffviewDiffDelete = { link = 'Comment' },
}
