local M = {}

-- Highlight Function And Color definitons {{{

local function highlight(group, styles)
  local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight! '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local bg             = '#191622'
local bg_dark        = '#13111b'
local bg_darker      = '#15121e'
local bg_light       = '#201b2d'
local bg_lighter     = '#252131'
local grey           = '#8796b0'
local grey_dark      = '#353b52'
local red            = '#ed4556'
local heavy_red      = '#e61f44'
local green          = '#67e480'
local green_high     = '#67e480'
local blue           = '#78d1e1'
local blue_light     = '#78d1e1'
local yellow         = '#e7de79'
local orange         = '#e7de79'
local purple         = '#988bc7'
local magenta        = '#988bc7'
local cyan           = '#a1efe4'
local cyan_dark      = '#a1efe4'
local pink           = '#ff79c6'
local fg             = '#e1e1e6'
local fg_light       = '#e1e1e6'
local fg_dark        = '#e1e1e6'
local hollow         = '#424760'
local hollow_lighter = '#30354e'
local white          = '#e1e1e6'
local comment        = '#5a4b81'

-- }}}

-- Editor Highlight Groups {{{

local editor_syntax = {
  CursorLine   = { bg = bg_lighter },
  Cursor       = { fg = fg, bg = bg },
  Directory    = { fg = blue, gui = 'bold' },
  DiffAdd      = { fg = green },
  DiffChange   = { fg = yellow },
  DiffDelete   = { fg = red },
  DiffText     = { fg = blue },
  EndOfBuffer  = { bg = bg, fg = fg },
  ErrorMsg     = { fg = red, gui = 'bold' },
  VertSplit    = { bg = bg_dark, fg = bg },
  Folded       = { fg = fg_dark, gui = 'italic' },
  FoldColumn   = { fg = yellow },
  SignColumn   = { fg = yellow },
  IncSearch    = { bg = yellow, fg = bg },
  Substitute   = { bg = blue, fg = bg },
  LineNr       = { fg = comment },
  CursorLineNr = { fg = fg },
  MatchParen   = { fg = fg, gui = 'bold' },
  Normal       = { fg = fg, bg = bg },
  NormalFloat  = { bg = grey_dark, fg = white },
  Pmenu        = { bg = bg_darker, fg = fg_light },
  PmenuSel     = { bg = cyan, fg = bg_lighter, gui = 'bold' },
  PmenuSbar    = { bg = bg_lighter },
  PmenuThumb   = { bg = fg },
  Search       = { bg = hollow },
  SpecialKey   = { bg = bg_light },
  SpellBad     = { gui = 'underline', sp = red },
  SpellCap     = { gui = 'underline', sp = yellow },
  SpellLocal   = { gui = 'underline', sp = orange },
  SpellRare    = { gui = 'underline', sp = blue },
  TabLine      = { bg = bg, fg = fg },
  TabLineFill  = { bg = bg, fg = fg },
  TabLineSel   = { bg = bg, fg = fg, gui = 'bold'},
  Title        = { fg = green },
  Visual       = { bg = hollow_lighter },
  VisualNOS    = { bg = hollow_lighter },
  WarningMsg   = { fg = yellow, gui = 'italic' },
  Whitespace   = { bg = yellow },

  -- git highlighting
  gitcommitComment        = { fg = fg_dark, gui = 'italic' },
  gitcommitUntracked      = { fg = fg_dark, gui = 'italic' },
  gitcommitDiscarded      = { fg = fg_dark, gui = 'italic' },
  gitcommitSelected       = { fg = fg_dark, gui = 'italic' },
  gitcommitUnmerged       = { fg = green },
  gitcommitBranch         = { fg = magenta },
  gitcommitNoBranch       = { fg = magenta },
  gitcommitDiscardedType  = { fg = red },
  gitcommitSelectedType   = { fg = green },
  gitcommitUntrackedFile  = { fg = cyan },
  gitcommitDiscardedFile  = { fg = red },
  gitcommitDiscardedArrow = { fg = red },
  gitcommitSelectedFile   = { fg = green },
  gitcommitSelectedArrow  = { fg = green },
  gitcommitUnmergedFile   = { fg = yellow },
  gitcommitUnmergedArrow  = { fg = yellow },
  gitcommitSummary        = { fg = fg_light },
  gitcommitOverflow       = { fg = red },
  gitcommitOnBranch      = {},
  gitcommitHeader        = {},
  gitcommitFile          = {},

  -- User dependent groups, probably useless to change the default:
  Conceal      = {},
  ModeMsg      = {},
  MsgArea      = {},
  MsgSeparator = {},
  MoreMsg      = {},
  NonText      = {},
  Question     = {},
  QuickFixLine = {},
  StatusLine   = {},
  StatusLineNC = {},
  WildMenu     = {}
}

-- }}}

-- Vim Default Code Syntax {{{

local code_syntax = {
  Comment        = { fg = comment, gui = 'italic' },
  Constant       = { fg = cyan },
  String         = { fg = green },
  Character      = { fg = green, gui = 'bold' },
  Number         = { fg = orange },
  Float          = { fg = orange },
  Boolean        = { fg = orange },

  Identifier     = { fg = heavy_red },
  Function       = { fg = blue, gui = 'italic' },

  Statement      = { fg = blue_light, gui = 'italic' },
  Conditional    = { fg = blue, gui = 'italic' },
  Repeat         = { fg = blue, gui = 'italic' },
  Label          = { fg = blue, gui = 'italic' },
  Exception      = { fg = blue, gui = 'italic' },
  Operator       = { fg = blue },
  Keyword        = { fg = heavy_red },

  Include        = { fg = blue_light },
  Define         = { fg = magenta },
  Macro          = { fg = magenta },
  PreProc        = { fg = yellow },
  PreCondit      = { fg = yellow },

  Type           = { fg = yellow },
  StorageClass   = { fg = yellow },
  Structure      = { fg = yellow },
  Typedef        = { fg = yellow },

  Special        = { fg = blue },
  SpecialChar    = {},
  Tag            = { fg = orange },
  SpecialComment = { fg = fg_dark, gui = 'bold' },
  Debug          = {},
  Delimiter      = {},

  Ignore         = {},
  Underlined     = { gui = 'underline' },
  Error          = { fg = heavy_red },
  Todo           = { fg = magenta, gui = 'bold' },
}

-- }}}

-- Plugin Highlight Groups {{{

local plugin_syntax = {
  GitGutterAdd           = { fg = green },
  GitGutterChange        = { fg = yellow },
  GitGutterDelete        = { fg = red },
  GitGutterChangeDelete  = { fg = orange },

  diffAdded              = { fg = green },
  diffRemoved            = { fg = heavy_red },

  TSError                = { fg = red },
  TSPunctDelimiter       = { fg = fg },
  TSPunctBracket         = { fg = fg },
  TSPunctSpecial         = { fg = fg },
  TSConstant             = { fg = pink },
  TSConstBuiltin         = { fg = pink },
  TSConstMacro           = { fg = yellow },
  TSString               = { fg = yellow },
  TSStringRegex          = { fg = cyan_dark },
  TSStringEscape         = { fg = cyan_dark },
  TSNumber               = { fg = cyan },
  TSBoolean              = { fg = cyan },
  TSFloat                = { fg = cyan },
  TSFunction             = { fg = blue_light },
  TSKeywordFunction      = { fg = blue_light },
  TSFuncBuiltin          = { fg = magenta },
  TSFuncMacro            = { fg = orange },
  TSParameter            = { fg = white },
  TSParameterReference   = { fg = green_high },
  TSMethod               = { fg = green },
  TSField                = { fg = blue_light },
  TSProperty             = { fg = fg },
  TSConstructor          = { fg = pink },
  TSConditional          = { fg = pink, gui = 'italic' },
  TSRepeat               = { fg = blue, gui = 'italic' },
  TSException            = { fg = blue, gui = 'italic' },
  TSLabel                = { fg = cyan_dark, gui = 'italic' },
  TSOperator             = { fg = pink },
  TSKeyword              = { fg = pink },
  TSType                 = { fg = yellow },
  TSTypeBuiltin          = { fg = orange },
  TSStructure            = { fg = orange },
  TSInclude              = { fg = pink },
  TSTag                  = { fg = pink },
  TSTagDelimiter         = { fg = fg },
  -- TSAnnotation = {},
  TSVariable = { fg = fg },
  TSVariableBuiltin = { fg = fg },
  -- TSDefinitionUsage = {},
  -- TSDefinition = {},
  -- TSCurrentScope                 = {},
  -- TSText                 = {},
  -- TSStrong               = {},
  -- TSEmphasis             = {},
  -- TSUnderline            = {},
  -- TSTitle                = {},
  -- TSLiteral              = {},
  -- TSURI                  = {},
}

-- }}}

-- Syntax Plugin And Language Highlight Groups {{{

local lang_syntax = {
  -- zsh.vim
  zshTodo            = code_syntax.Todo,
  zshComment         = code_syntax.Comment,
  zshPreProc         = code_syntax.PreProc,
  zshString          = code_syntax.String,
  zshStringDelimiter = { fg = cyan },
  zshPrecommand      = { fg = blue },
  zshKeyword         = code_syntax.Function,
  zshCommands        = { fg = blue },
  zshOptStart        = { fg = blue, gui = 'italic' },
  zshOption          = { fg = cyan, gui = 'italic' },
  zshNumber          = code_syntax.Number,
  zshSubst           = { fg = yellow },
  zshSubstDelim      = { fg = cyan },
}

-- }}}

-- Setting Neovim Terminal Color {{{

function M.setup()
  for group, styles in pairs(editor_syntax) do
    highlight(group, styles)
  end

  for group, styles in pairs(code_syntax) do
    highlight(group, styles)
  end

  for group, styles in pairs(plugin_syntax) do
    highlight(group, styles)
  end

  vim.api.nvim_set_var('terminal_color_0',          bg_lighter)
  vim.api.nvim_set_var('terminal_color_1',          red)
  vim.api.nvim_set_var('terminal_color_2',          green)
  vim.api.nvim_set_var('terminal_color_3',          yellow)
  vim.api.nvim_set_var('terminal_color_4',          blue)
  vim.api.nvim_set_var('terminal_color_5',          magenta)
  vim.api.nvim_set_var('terminal_color_6',          cyan)
  vim.api.nvim_set_var('terminal_color_7',          fg)
  vim.api.nvim_set_var('terminal_color_8',          grey)
  vim.api.nvim_set_var('terminal_color_9',          red)
  vim.api.nvim_set_var('terminal_color_10',         green)
  vim.api.nvim_set_var('terminal_color_11',         orange)
  vim.api.nvim_set_var('terminal_color_12',         blue)
  vim.api.nvim_set_var('terminal_color_13',         magenta)
  vim.api.nvim_set_var('terminal_color_14',         cyan)
  vim.api.nvim_set_var('terminal_color_15',         white)
  vim.api.nvim_set_var('terminal_color_background', bg_dark)
  vim.api.nvim_set_var('terminal_color_foreground', fg_light)
end

-- }}}

return M
