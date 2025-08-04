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

-- CodeCompanion
vim.keymap.set('n', '<leader>cc', function()
  vim.cmd 'CodeCompanionChat Toggle'
  vim.cmd 'vertical resize 80'
end, { desc = '[cc] open up CodeCompanionChat and resize', silent = true })

vim.keymap.set('n', '<leader>cl', ':CodeCompanion ', { desc = '[cl] CodeCompanion In-Line' })
vim.keymap.set('v', 'ga', '<cmd>CodeCompanionChat Add<CR> ', { desc = '[cca] Add visual block to Code Companion Chat' })
vim.keymap.set('n', '<leader>cm', '<cmd>CodeCompanionActions<CR> ', { desc = '[cm] Open up CodeCompanionActions' })

-- Move highlighted text up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlighted text down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlighted text up' })

vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste without yanking' })
return {}
