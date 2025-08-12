return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = false },
    dashboard = {
      preset = {
        header = [[
   ('-.      .-')    .-') _   _  .-')     ('-.                (`\ .-') /`            .-') _  
  ( OO ).-. ( OO ). (  OO) ) ( \( -O )   ( OO ).-.             `.( OO ),'           ( OO ) ) 
  / . --. /(_)---\_)/     '._ ,------.   / . --. / ,--.     ,--./  .--.  ,-.-') ,--./ ,--,'  
  | \-.  \ /    _ | |'--...__)|   /`. '  | \-.  \  |  |.-') |      |  |  |  |OO)|   \ |  |\  
.-'-'  |  |\  :` `. '--.  .--'|  /  | |.-'-'  |  | |  | OO )|  |   |  |, |  |  \|    \|  | ) 
 \| |_.'  | '..`''.)   |  |   |  |_.' | \| |_.'  | |  |`-' ||  |.'.|  |_)|  |(_/|  .     |/  
  |  .-.  |.-._)   \   |  |   |  .  '.'  |  .-.  |(|  '---.'|         | ,|  |_.'|  |\    |   
  |  | |  |\       /   |  |   |  |\  \   |  | |  | |      | |   ,'.   |(_|  |   |  | \   |   
  `--' `--' `-----'    `--'   `--' '--'  `--' `--' `------' '--'   '--'  `--'   `--'  `--'   ]],
      },
    },
    explorer = { enabled = false },
    -- indent, animate, and scope will influence the indentation line and its color
    indent = {
      priority = 1,
      enabled = true, -- enable indent guides
      char = '|',
      only_scope = false, -- only show indent guides of the scope
      only_current = false, -- only show indent guides in the current window
      hl = 'SnacksIndent', ---@type string|string[] hl group for indent guides
    },
    animate = {
      enabled = true,
      style = 'out',
      easing = 'linear',
      duration = {
        step = 20, -- ms per step
        total = 500, -- maximum duration
      },
    },
    scope = {
      enabled = true, -- enable highlighting the current scope
      priority = 200,
      char = '|',
      underline = true, -- underline the start of the scope
      only_current = false, -- only show scope in the current window
      hl = 'SnacksIndentScope', ---@type string|string[] hl group for scopes
    },
    input = { enabled = false },
    picker = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = false },
    scroll = {
      animate = {
        duration = { step = 15, total = 250 },
        easing = 'linear',
      },
      -- faster animation when repeating scroll after delay
      animate_repeat = {
        delay = 100, -- delay in ms before using the repeat animation
        duration = { step = 5, total = 50 },
        easing = 'linear',
      },
    },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    lazygit = { -- automatically configure lazygit to use the current colorscheme
      -- and integrate edit with the current neovim instance
      configure = true,
      -- extra configuration for lazygit that will be merged with the default
      -- snacks does NOT have a full yaml parser, so if you need `"test"` to appear with the quotes
      -- you need to double quote it: `"\"test\""`
      config = {
        os = { editPreset = 'nvim-remote' },
        gui = {
          -- set to an empty string "" to disable icons
          nerdFontsVersion = '3',
        },
      },
      -- theme_path = svim.fs.normalize(vim.fn.stdpath 'cache' .. '/lazygit-theme.yml'),
      -- Theme for lazygit
      theme = {
        [241] = { fg = 'Special' },
        activeBorderColor = { fg = 'MatchParen', bold = true },
        cherryPickedCommitBgColor = { fg = 'Identifier' },
        cherryPickedCommitFgColor = { fg = 'Function' },
        defaultFgColor = { fg = 'Normal' },
        inactiveBorderColor = { fg = 'FloatBorder' },
        optionsTextColor = { fg = 'Function', bold = true },
        searchingActiveBorderColor = { fg = 'MatchParen' },
        selectedLineBgColor = { bg = 'Visual' },
        unstagedChangesColor = { fg = 'DiagnosticError' },
      },
      win = {
        style = 'lazygit',
      },
    }, -- enable lazygit configuration
  },
  keys = {
    {
      '<leader>gB',
      function()
        Snacks.gitbrowse()
      end,
      desc = 'Git Browse',
      mode = { 'n', 'v' },
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
      mode = { 'n' },
    },
  },
}
