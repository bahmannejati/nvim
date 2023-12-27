-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
colorscheme tokyonight-night

" set default order:
Neotree
call feedkeys("og")
]])
vim.opt.clipboard = 'unnamedplus'

-- keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>gn", ":Neogit<cr>", opts)

-- open initial windows
