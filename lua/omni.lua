local omni = {
  base0      = '#1B2229';
  base1      = '#1c1f24';
  base2      = '#202328';
  base3      = '#23272e';
  base4      = '#3f444a';
  base5      = '#5B6268';
  base6      = '#73797e';
  base7      = '#9ca0a4';
  base8      = '#b1b1b1';

  bg = '#191622'
  bg1 = '#504945';
  bg_popup = '#3E4556';
  bg_highlight  = '#2E323C';
  bg_visual = '#b3deef';

  fg = '#e1e1e6';
  fg_alt  = '#5B6268';

  black = '#201b2d';
  red = '#ed4556';
  green = '#67e480';
  yellow = '#e7de79';
  blue = '#78d1e1';
  magenta = '#988bc7';
  grey = '#e1e1e6';

  brown = '#666660';
  orange = '#da8548';
  cyan = '#78d1e1';
  violet = '#988bc7';
  teal = '#1abc9c';

  bracket = '#80A0C2';
  currsor_bg = '#00f769';
  none = 'NONE';
}

function omni.terminal_color()
  vim.g.terminal_color_0 = omni.bg
  vim.g.terminal_color_1 = omni.red
  vim.g.terminal_color_2 = omni.green
  vim.g.terminal_color_3 = omni.yellow
  vim.g.terminal_color_4 = omni.blue
  vim.g.terminal_color_5 = omni.violet
  vim.g.terminal_color_6 = omni.cyan
  vim.g.terminal_color_7 = omni.bg1
  vim.g.terminal_color_8 = omni.brown
  vim.g.terminal_color_9 = omni.red
  vim.g.terminal_color_10 = omni.green
  vim.g.terminal_color_11 = omni.yellow
  vim.g.terminal_color_12 = omni.blue
  vim.g.terminal_color_13 = omni.violet
  vim.g.terminal_color_14 = omni.cyan
  vim.g.terminal_color_15 = omni.fg
end

function omni.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end


function omni.load_syntax()
  local syntax = {
    Normal = {fg = omni.fg,bg=omni.bg};
    Terminal = {fg = omni.fg,bg=omni.bg};
    SignColumn = {fg=omni.fg,bg=omni.bg};
    FoldColumn = {fg=omni.fg_alt,bg=omni.black};
    VertSplit = {fg=omni.black,bg=omni.bg};
    Folded = {fg=omni.grey,bg=omni.bg_highlight};
    EndOfBuffer = {fg=omni.bg,bg=omni.none};
    IncSearch = {fg=omni.bg1,bg=omni.orange,style=omni.none};
    Search = {fg=omni.bg,bg=omni.green};
    ColorColumn = {fg=omni.none,bg=omni.bg_highlight};
    Conceal = {fg=omni.grey,bg=omni.none};
    Cursor = {fg=omni.none,bg=omni.none,style='reverse'};
    vCursor = {fg=omni.none,bg=omni.none,style='reverse'};
    iCursor = {fg=omni.none,bg=omni.none,style='reverse'};
    lCursor = {fg=omni.none,bg=omni.none,style='reverse'};
    CursorIM = {fg=omni.none,bg=omni.none,style='reverse'};
    CursorColumn = {fg=omni.none,bg=omni.bg_highlight};
    CursorLine = {fg=omni.none,bg=omni.bg_highlight};
    LineNr = {fg=omni.base4};
    CursorLineNr = {fg=omni.blue};
    DiffAdd = {fg=omni.black,bg=omni.green};
    DiffChange = {fg=omni.black,bg=omni.yellow};
    DiffDelete = {fg=omni.black,bg=omni.red};
    DiffText = {fg=omni.black,bg=omni.fg};
    Directory = {fg=omni.bg1,bg=omni.none};
    ErrorMsg = {fg=omni.red,bg=omni.none,style='bold'};
    WarningMsg = {fg=omni.yellow,bg=omni.none,style='bold'};
    ModeMsg = {fg=omni.fg,bg=omni.none,style='bold'};
    MatchParen = {fg=omni.red,bg=omni.none};
    NonText = {fg=omni.bg1};
    Whitespace = {fg=omni.base4};
    SpecialKey = {fg=omni.bg1};
    Pmenu = {fg=omni.fg,bg=omni.bg_popup};
    PmenuSel = {fg=omni.base0,bg=omni.blue};
    PmenuSelBold = {fg=omni.base0,g=omni.blue};
    PmenuSbar = {fg=omni.none,bg=omni.blue};
    PmenuThumb = {fg=omni.brown,bg=omni.brown};
    WildMenu = {fg=omni.fg,bg=omni.green};
    Question = {fg=omni.yellow};
    NormalFloat = {fg=omni.base8,bg=omni.bg_highlight};
    TabLineFill = {style=omni.none};
    TabLineSel = {bg=omni.blue};
    StatusLine = {fg=omni.base8,bg=omni.base2,style=omni.none};
    StatusLineNC = {fg=omni.grey,bg=omni.base2,style=omni.none};
    SpellBad = {fg=omni.red,bg=omni.none,style='undercurl'};
    SpellCap = {fg=omni.blue,bg=omni.none,style='undercurl'};
    SpellLocal = {fg=omni.cyan,bg=omni.none,style='undercurl'};
    SpellRare = {fg=omni.violet,bg=omni.none,style = 'undercurl'};
    Visual = {fg=omni.black,bg=omni.bg_visual};
    VisualNOS = {fg=omni.black,bg=omni.bg_visual};
    QuickFixLine = {fg=omni.violet,style='bold'};
    Debug = {fg=omni.orange};
    debugBreakpoint = {fg=omni.bg,bg=omni.red};

    Boolean = {fg=omni.orange};
    Number = {fg=omni.violet};
    Float = {fg=omni.violet};
    PreProc = {fg=omni.violet};
    PreCondit = {fg=omni.violet};
    Include = {fg=omni.violet};
    Define = {fg=omni.violet};
    Conditional = {fg=omni.violet};
    Repeat = {fg=omni.violet};
    Keyword = {fg=omni.red};
    Typedef = {fg=omni.red};
    Exception = {fg=omni.red};
    Statement = {fg=omni.red};
    Error = {fg=omni.red};
    StorageClass = {fg=omni.orange};
    Tag = {fg=omni.orange};
    Label = {fg=omni.orange};
    Structure = {fg=omni.orange};
    Operator = {fg=omni.magenta};
    Title = {fg=omni.orange,style='bold'};
    Special = {fg=omni.yellow};
    SpecialChar = {fg=omni.yellow};
    Type = {fg=omni.yellow};
    Function = {fg=omni.magenta,style='bold'};
    String = {fg=omni.green};
    Character = {fg=omni.green};
    Constant = {fg=omni.cyan};
    Macro = {fg=omni.cyan};
    Identifier = {fg=omni.blue};

    Comment = {fg=omni.base6};
    SpecialComment = {fg=omni.grey};
    Todo = {fg=omni.violet};
    Delimiter = {fg=omni.fg};
    Ignore = {fg=omni.grey};
    Underlined = {fg=omni.none,style='underline'};

    TSFunction = {fg=omni.yellow,style='bold'};
    TSMethod = {fg=omni.yellow,style='bold'};
    TSKeywordFunction = {fg=omni.blue};
    TSProperty = {fg=omni.cyan};
    TSType = {fg=omni.teal};
    TSPunctBracket = {fg=omni.bracket};

    vimCommentTitle = {fg=omni.grey,style='bold'};
    vimLet = {fg=omni.orange};
    vimVar = {fg=omni.cyan};
    vimFunction = {fg=omni.magenta,style='bold'};
    vimIsCommand = {fg=omni.fg};
    vimCommand = {fg=omni.blue};
    vimNotFunc = {fg=omni.violet,style='bold'};
    vimUserFunc = {fg=omni.yellow,style='bold'};
    vimFuncName= {fg=omni.yellow,style='bold'};

    diffAdded = {fg = omni.green};
    diffRemoved = {fg =omni.red};
    diffChanged = {fg = omni.blue};
    diffOldFile = {fg = omni.yellow};
    diffNewFile = {fg = omni.orange};
    diffFile    = {fg = omni.aqua};
    diffLine    = {fg = omni.grey};
    diffIndexLine = {fg = omni.violet};

    gitcommitSummary = {fg = omni.red};
    gitcommitUntracked = {fg = omni.grey};
    gitcommitDiscarded = {fg = omni.grey};
    gitcommitSelected = { fg=omni.grey};
    gitcommitUnmerged = { fg=omni.grey};
    gitcommitOnBranch = { fg=omni.grey};
    gitcommitArrow  = {fg = omni.grey};
    gitcommitFile  = {fg = omni.green};

    VistaBracket = {fg=omni.grey};
    VistaChildrenNr = {fg=omni.orange};
    VistaKind = {fg=omni.purpl};
    VistaScope = {fg=omni.red};
    VistaScopeKind = {fg=omni.blue};
    VistaTag = {fg=omni.green,style='bold'};
    VistaPrefix = {fg=omni.grey};
    VistaColon = {fg=omni.green};
    VistaIcon = {fg=omni.yellow};
    VistaLineNr = {fg=omni.fg};

    GitGutterAdd = {fg=omni.green};
    GitGutterChange = {fg=omni.blue};
    GitGutterDelete = {fg=omni.red};
    GitGutterChangeDelete = {fg=omni.violet};

    SignifySignAdd = {fg=omni.green};
    SignifySignChange = {fg=omni.blue};
    SignifySignDelete = {fg=omni.red};

    dbui_tables = {fg=omni.blue};

    DefxIconsParentDirectory = {fg=omni.orange};
    Defx_filename_directory = {fg=omni.blue};
    Defx_filename_root = {fg=omni.red};

    DashboardShortCut = {fg=omni.violet};
    DashboardHeader = {fg=omni.orange};
    DashboardCenter = {fg=omni.blue};
    DashboardFooter = {fg=omni.grey};

    LspDiagnosticsSignError = {fg=omni.red};
    LspDiagnosticsSignWarning = {fg=omni.yellow};
    LspDiagnosticsSignInformation = {fg=omni.blue};
    LspDiagnosticsSignHint = {fg=omni.cyan};

    LspDiagnosticsVirtualTextError = {fg=omni.red};
    LspDiagnosticsVirtualTextWarning= {fg=omni.yellow};
    LspDiagnosticsVirtualTextInformation = {fg=omni.blue};
    LspDiagnosticsVirtualTextHint = {fg=omni.cyan};

    LspDiagnosticsUnderlineError = {style="undercurl",sp=omni.red};
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=omni.yellow};
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=omni.blue};
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=omni.cyan};

    CursorWord0 = {bg=omni.currsor_bg};
    CursorWord1 = {bg=omni.currsor_bg};

    NvimTreeFolderName = {fg=omni.blue};
    NvimTreeRootFolder = {fg=omni.red};
    NvimTreeSpecialFile = {fg=omni.fg,bg=omni.none,stryle='NONE'};

    TelescopeBorder = {fg=omni.teal};
    TelescopePromptBorder = {fg=omni.blue}
  }
  return syntax
end

function omni.get_omni_color()
  return omni
end

function omni.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'omni'

  omni.terminal_color()
  local syntax = omni.load_syntax()

  for group,colors in pairs(syntax) do
    omni.highlight(group,colors)
  end
end

omni.colorscheme()

return omni
