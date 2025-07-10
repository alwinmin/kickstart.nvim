-- Keymappings
-- File Tree
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = '[e] Launch netrw' })

-- cd Directory
vim.keymap.set('n', '<leader>hc', ':cd %:h<CR>', { desc = '[c] move to current directory', silent = true })
vim.keymap.set('n', '<leader>hh', ':cd $HOME<CR>', { desc = '[h] move to HOME directory', silent = true })

-- Harpoon
local harpoon = require 'harpoon'
harpoon:setup()

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end)
vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<leader>,', function()
  harpoon:list():prev()
end)
vim.keymap.set('n', '<leader>.', function()
  harpoon:list():next()
end)

-- MCPHub
vim.keymap.set('n', '<leader>mcp', ':MCPHub<CR>', { desc = '[mcp] open up MCP Hub', silent = true })
return {}
