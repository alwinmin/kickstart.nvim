vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Check git status' })
return {
  'tpope/vim-fugitive',
  config = function()
    -- Add Fugitive config here
    -- Example: vim.g.fugitive_git_executable = '/usr/local/bin/git'
  end,
}
