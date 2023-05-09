----------------------------------------- HIGHLIGHT GROUPS -----------------------------------------

local p = require('midnight.palette').palette
local c = require('midnight.palette').components

-- User-defined groups
local user = {
  Bold = { style = 'bold' },
  Italic = { style = 'italic' },
  Underlined = { style = 'underline' },

  Border = { fg = p.gray[9] },
  Select = { bg = p.cyan[5] },

  GitNew = { fg = p.green[4] },
  GitDirty = { fg = p.yellow[2] },
  GitRenamed = { fg = p.orange[2] },
  GitDeleted = { fg = p.red[3] },
  GitIgnored = { fg = p.gray[5] },
  GitStaged = { fg = p.green[1] },
  GitMerge = { fg = p.teal[3] }, -- TEST: during a merge

  -- XXX: move into personal config
  WinBarDecor = { fg = p.gray[6], bg = c.bg },
  WinBarDecorNC = { fg = p.black, bg = c.bg },
}

-- NeoVim builtin groups
local builtin = {
  ColorColumn = { bg = p.black },
  Conceal = { fg = c.fg },
  CursorColumn = { link = 'ColorColumn' },
  CursorLine = { link = 'ColorColumn' },
  Directory = { fg = p.blue[4] },
  DiffAdd = { bg = p.green[5] },
  DiffChange = { bg = p.yellow[4] },
  DiffDelete = { bg = p.red[5] },
  DiffText = { bg = p.yellow[3] },
  EndOfBuffer = { fg = c.bg },
  ErrorMsg = { fg = c.error },
  WinSeparator = { link = 'Border' },
  Folded = { fg = c.bg, bg = p.gray[7], style = 'bold,italic' },
  FoldColumn = { link = 'Folded' },
  SignColumn = { bg = c.bg },
  IncSearch = { fg = c.bg, bg = p.orange[1] },
  Substitute = { fg = c.bg, bg = p.red[1] },
  LineNr = { fg = p.gray[7] },
  CursorLineNr = { fg = p.gray[1] },
  MatchParen = { bg = p.cyan[4] },
  MoreMsg = { fg = p.blue[3] },
  NonText = { fg = c.bg },
  Normal = { fg = c.fg, bg = c.bg },
  NormalFloat = { link = 'Normal' },
  Pmenu = { bg = c.bg }, -- TODO: add remaining Pmenu groups during "nvim-cmp" configuration
  PmenuSel = { link = 'Select' },
  PmenuSBar = { bg = p.gray[10] },
  PmenuThumb = { bg = p.gray[8] },
  Question = { link = 'MoreMsg' },
  QuickFixLine = { link = 'Bold' },
  Search = { bg = p.orange[3] },
  -->START> CHECK: where are these highlight groups used?
  SpecialKey = { clear = true },
  SpellBad = { clear = true },
  SpellCap = { clear = true },
  SpellLocal = { clear = true },
  SpellRare = { clear = true },
  --<END<
  StatusLine = { fg = c.tabline, bg = c.bg },
  StatusLineNC = { clear = true },
  TabLine = { link = 'StatusLine' },
  TabLineFill = { clear = true },
  TabLineSel = { fg = c.bg, bg = c.tabline, style = 'bold' },
  Title = { fg = c.title, style = 'bold' },
  Visual = { link = 'Select' },
  WarningMsg = { fg = c.warn },
  Whitespace = { fg = p.gray[8] },
  WildMenu = { clear = true },
  WinBar = { fg = c.bg, bg = p.gray[6], style = 'bold' },
  WinBarNC = { fg = p.gray[3], bg = p.black },
}

-- NeoVim defacto groups
local standard = {
  -- syntax
  Comment = { fg = c.comment, style = 'italic' },
  Conditional = { fg = c.keyword },
  Constant = { fg = c.constant },
  Delimiter = { fg = c.fg },
  Error = { fg = c.error },
  Field = { fg = c.field },
  Function = { fg = c.method },
  Identifier = { fg = c.variable },
  Include = { fg = c.operator },
  Keyword = { fg = c.keyword },
  Namespace = { fg = c.namespace },
  Operator = { fg = c.operator },
  Parameter = { fg = c.parameter },
  PreProc = { fg = c.literal },
  Repeat = { fg = c.keyword },
  Special = { link = 'PreProc' },
  Statement = { link = 'Operator' },
  Todo = { fg = c.info },
  String = { fg = c.string },
  Type = { fg = c.type },
  Warn = { fg = c.warn },

  -- diagnostics
  DiagnosticError = { fg = c.error, style = 'italic' },
  DiagnosticWarn = { fg = c.warn, style = 'italic' },
  DiagnosticInfo = { fg = c.info, style = 'italic' },
  DiagnosticHint = { fg = c.hint, style = 'italic' },
  DiagnosticOk = { fg = c.success, style = 'italic' },

  -- help
  helpCommand = { fg = c.help_command },
  helpSpecial = { link = 'Parameter' },
  helpHeader = { fg = c.title },
  helpSectionDelim = { link = 'helpHeader' },
  helpHeadline = { link = 'helpHeader' },
  helpHyperTextEntry = { fg = c.tags },
  helpHyperTextJump = { fg = c.tags },
  helpError = { fg = c.error, style = 'bold' },
  helpWarning = { fg = c.warn, style = 'bold' },
  helpTodo = { fg = c.info, style = 'bold' },
  helpNote = { link = 'helpTodo' },

  -- checkhealth
  healthError = { fg = c.error, style = 'bold' },
  healthWarning = { fg = c.warn, style = 'bold' },
  healthSuccess = { fg = c.success, style = 'bold' },

  -- git
  gitCommitHeader = { link = 'Title' },
  gitCommitBranch = { fg = p.purple[2], style = 'bold' },
  gitCommitSummary = { link = 'Parameter' },
  gitCommitBlank = { clear = true },
  gitCommitSelectedFile = { fg = c.success },
  gitCommitSelectedType = { fg = c.success },
  gitCommitDiscardedFile = { fg = c.error },
  gitCommitDiscardedType = { fg = c.error },
  gitCommitUntrackedFile = { fg = p.gray[2] },
  gitIgnorePattern = { link = 'Identifier' },

  -- diff
  diffAdded = { link = 'DiffAdd' },
  diffChanged = { link = 'DiffChange' },
  diffRemoved = { link = 'DiffDelete' },
  diffOldFile = { link = 'GitDeleted' },
  diffNewFile = { link = 'GitNew' },
  diffFile = { link = 'Directory' },
  diffLine = { link = 'Bold' },
  diffIndexLine = { fg = p.purple[1] },
  diffSubName = { fg = p.magenta[2] },
}

local semantic = {
  -- cmake
  ['@constant.cmake'] = { link = 'Type' },
  ['@keyword.operator.cmake'] = { link = 'Operator' },
  ['@function.builtin.cmake'] = { link = 'Function' },
  ['@punctuation.special.cmake'] = { link = 'PreProc' },

  -- cpp
  ['@character.cpp'] = { link = 'String' },
  ['@constant.builtin.cpp'] = { link = 'Constant' },
  ['@define.cpp'] = { link = 'Operator' },
  ['@field.cpp'] = { link = 'Field' },
  ['@function.builtin.cpp'] = { link = 'Operator' },
  ['@include.cpp'] = { link = 'Include' },
  ['@namespace.cpp'] = { link = 'Namespace' },
  ['@parameter.cpp'] = { link = 'Parameter' },
  ['@property.cpp'] = { link = 'Field' },
  ['@preproc.cpp'] = { link = 'Operator' },
  ['@repeat.cpp'] = { link = 'Keyword' },
  ['@string.escape.cpp'] = { link = 'Operator' },
  ['@storageclass.cpp'] = { link = 'Operator' },
  ['@type.builtin.cpp'] = { link = 'Keyword' },
  ['@type.qualifier.cpp'] = { link = 'Operator' },
  ['@variable.builtin.cpp'] = { link = 'Keyword' },

  ['@lsp.type.enumMember.cpp'] = { link = 'Field' },
  ['@lsp.type.namespace.cpp'] = { link = 'Namespace' },
  ['@lsp.type.parameter.cpp'] = { link = 'Parameter' },
  ['@lsp.type.operator.cpp'] = { link = 'Operator' },
  ['@lsp.type.property.cpp'] = { link = 'Field' },
  ['@lsp.typemod.class.deduced.cpp'] = { link = 'Keyword' },
  ['@lsp.typemod.operator.declaration.cpp'] = { link = 'Function' },
  ['@lsp.typemod.operator.userDefined.cpp'] = { link = 'Keyword' },
  ['@lsp.typemod.variable.classScope.cpp'] = { link = 'Field' },

  -- json
  ['@label.json'] = { link = 'Parameter' },

  -- lua (parameter and field highlights are flipped)
  ['@constant.builtin.lua'] = { link = 'Constant' },
  ['@constructor.lua'] = { link = 'Delimiter' },
  ['@field.lua'] = { link = 'Parameter' },
  ['@keyword.operator.lua'] = { link = 'Operator' },
  ['@parameter.lua'] = { link = 'Field' },
  ['@property.lua'] = { link = 'Parameter' },
  ['@repeat.lua'] = { link = 'Keyword' },

  ['@lsp.type.macro.lua'] = { link = 'Type' },
  ['@lsp.type.parameter.lua'] = { link = 'Field' },
  ['@lsp.type.property.lua'] = { link = 'Parameter' },

  -- python
  ['@constant.python'] = { link = 'PreProc' },
  ['@constructor.python'] = { link = 'Type' },
  ['@exception.python'] = { link = 'Keyword' },
  ['@function.builtin.python'] = { link = 'Function' },
  ['@include.python'] = { link = 'Include' },
  ['@parameter.python'] = { link = 'Parameter' },
  ['@repeat.python'] = { link = 'Keyword' },
  ['@string.documentation.python'] = { link = 'Comment' },
  ['@string.escape.python'] = { link = 'Operator' },
  ['@variable.builtin.python'] = { link = 'Keyword' },
  -- TODO: add lsp tokens when server supports it

  -- rust
  ['@include.rust'] = { link = 'Include' },
  ['@namespace.rust'] = { link = 'Namespace' },
  ['@storageclass.rust'] = { link = 'Keyword' },
  ['@type.qualifier.rust'] = { link = 'Operator' },

  -- vim
  ['@constant.builtin.vim'] = { link = 'Operator' },
  ['@function.macro.vim'] = { link = 'Operator' },
  ['@label.vim'] = { link = 'Keyword' },
  ['@namespace.vim'] = { link = 'Field' },
}

local plugins = {
  -- lazy.nvim
  LazyH1 = { fg = c.bg, bg = p.cyan[3] },
  LazyH2 = { fg = p.cyan[3], style = 'bold' },
  LazySpecial = { fg = p.cyan[3] },
  LazyProp = { link = 'LazySpecial' },
  LazyValue = { fg = p.yellow[1] },
  LazyDir = { link = 'Directory' },
  LazyUrl = { fg = p.purple[1] },
  LazyCommit = { link = 'LazyUrl' },
  LazyCommitType = { fg = p.green[2] },
  LazyCommitIssue = { fg = p.magenta[1] },
  LazyComment = { fg = c.comment },
  LazyButton = { bg = c.bg },
  LazyButtonActive = { link = 'Select' },
  LazyReasonPlugin = { link = 'LazySpecial' },
  LazyReasonSource = { link = 'String' },
  LazyReasonImport = { link = 'LazyReasonSource' },
  LazyReasonRuntime = { link = 'LazyReasonSource' },
  LazyReasonStart = { fg = c.tags },
  LazyReasonEvent = { link = 'LazyReasonStart' },
  LazyReasonKeys = { fg = p.teal[1] },
  LazyReasonCmd = { link = 'LazyReasonKeys' },

  -- nvim-tree.lua
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

  -- gitsigns.nvim
  GitSignsAdd = { link = 'GitNew' },
  GitSignsChange = { link = 'GitDirty' },
  GitSignsDelete = { link = 'GitDeleted' },
  GitSignsCurrentLineBlame = { link = 'Whitespace' },

  -- diffview.nvim
  DiffviewDim1 = { fg = p.gray[6] },
  DiffviewReference = { fg = p.cyan[1], style = 'italic' },
  DiffviewPrimary = { fg = p.cyan[1] },
  DiffviewSecondary = { fg = p.teal[2] },
  DiffviewNonText = { link = 'Border' },
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
  DiffviewFilePanelConflicts = { link = 'GitRenamed' },
  DiffviewFolderSign = { link = 'NvimTreeFolderIcon' },

  -- telescope.nvim
  TelescopeTitle = { fg = c.fg },
  TelescopeBorder = { link = 'Border' },
  TelescopeMatching = { link = 'Search' },
  TelescopeMultiIcon = { fg = p.cyan[1] },
  TelescopeMultiSelection = { fg = p.purple[3], style = 'bold,italic' },
  TelescopeResultsSpecialComment = { fg = c.comment },
  TelescopeResultsIdentifier = { fg = p.purple[1] },
  TelescopeResultsConstant = { fg = p.cyan[1], style = 'italic' },
  TelescopeResultsLineNr = { fg = p.red[2] },

  -- nvim-lspconfig
  LspInfoList = { fg = p.blue[3] },
  LspInfoFiletype = { fg = p.red[2] },
  LspInfoBorder = { link = 'Border' },

  -- todo-comments.nvim
  -- XXX: move into personal config?
  TodoCommentsStatusLine = { fg = c.bg, bg = p.black },
  TodoCommentsFix = { fg = c.error, bg = p.black, style = 'bold' },
  TodoCommentsHack = { fg = c.warn, bg = p.black, style = 'bold' },
  TodoCommentsNote = { fg = c.hint, bg = p.black, style = 'bold' },
  TodoCommentsPerf = { fg = c.success, bg = p.black, style = 'bold' },
  TodoCommentsTest = { fg = c.default, bg = p.black, style = 'bold' },
  TodoCommentsTodo = { fg = c.info, bg = p.black, style = 'bold' },
  TodoCommentsWarn = { fg = c.warn, bg = p.black, style = 'bold' },

  -- mason.nvim
  MasonHeader = { fg = c.bg, bg = p.cyan[3], style = 'bold' },
  MasonHeaderSecondary = { link = 'MasonHeader' },
  MasonHighlight = { fg = p.cyan[3] },
  MasonHighlightSecondary = { link = 'MasonHighlight' },
  MasonHighlightBlock = { link = 'MasonHeader' },
  MasonHighlightBlockSecondary = { link = 'MasonHeader' },
  MasonHighlightBlockBold = { link = 'MasonHeader' },
  MasonHighlightBlockBoldSecondary = { link = 'MasonHeader' },
  MasonMuted = { fg = c.comment },
  MasonMutedBlock = { bg = c.bg },
  MasonMutedBlockBold = { bg = c.bg, style = 'bold' },

  -- nvim-dap-ui
  -- BUG: in the plugin highlight setup method, keep track of issue #275
  DapUINormal = { link = 'Normal' },
  DapUICustomFG = { fg = p.cyan[3] },
  DapUIScope = { link = 'DapUICustomFG' },
  DapUIDecoration = { link = 'DapUICustomFG' },
  DapUIType = { link = 'Type' },
  DapUILineNumber = { link = 'Operator' },
  DapUIModifiedValue = { fg = c.string, bg = p.cyan[5] },
  DapUIWatchesEmpty = { fg = c.error },
  DapUIWatchesValue = { link = 'DapUICustomFG' },
  DapUIStoppedThread = { link = 'DapUICustomFG' },
  DapUIFrameName = { link = 'Function' },
  DapUISource = { link = 'Identifier' },
  DapUIBreakpointsPath = { link = 'DapUICustomFG' },
  DapUIBreakpointsInfo = { link = 'Type' },

  -- nvim-cmp
  CmpItemAbbr = { fg = p.gray[4] },
  CmpItemAbbrDeprecated = { fg = c.comment, style = 'strikethrough' },
  CmpItemAbbrMatch = { fg = p.red[3] },
  CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },
  CmpItemMenu = { fg = c.comment },
  CmpItemKind = { clear = true },
  CmpItemKindClass = { fg = c.type },
  CmpItemKindColor = { fg = p.red[3] }, --------------
  CmpItemKindConstant = { fg = c.constant },
  CmpItemKindConstructor = { fg = c.type },
  CmpItemKindEnum = { fg = c.type },
  CmpItemKindEnumMember = { fg = c.field },
  CmpItemKindEvent = { fg = p.red[3] }, --------------
  CmpItemKindField = { fg = c.field },
  CmpItemKindFile = { fg = c.string },
  CmpItemKindFolder = { fg = c.string },
  CmpItemKindFunction = { fg = c.method },
  CmpItemKindInterface = { fg = c.type },
  CmpItemKindKeyword = { fg = c.keyword },
  CmpItemKindMethod = { fg = c.method },
  CmpItemKindModule = { fg = c.namespace },
  CmpItemKindOperator = { fg = c.operator },
  CmpItemKindProperty = { fg = c.field },
  CmpItemKindReference = { fg = c.type },
  CmpItemKindSnippet = { fg = c.literal },
  CmpItemKindStruct = { fg = c.type },
  CmpItemKindText = { fg = c.comment },
  CmpItemKindTypeParameter = { fg = c.parameter },
  CmpItemKindUnit = { fg = p.red[3] }, --------------
  CmpItemKindValue = { fg = p.red[3] }, --------------
  CmpItemKindVariable = { fg = c.variable },
}

return { user, builtin, standard, semantic, plugins }
