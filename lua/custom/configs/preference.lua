-- NOTE: My Own Configs
-- Show line number and relative line number on column
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable auto comment next line
vim.cmd [[autocmd FileType * set formatoptions-=ro]]

return {}
