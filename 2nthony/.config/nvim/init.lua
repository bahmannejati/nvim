-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
colorscheme tokyonight-night

" set default order:
Neotree
call feedkeys("og")
]])
vim.opt.clipboard = 'unnamedplus'
