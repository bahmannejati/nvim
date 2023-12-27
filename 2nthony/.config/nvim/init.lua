-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
colorscheme tokyonight-night
]])
vim.opt.clipboard = 'unnamedplus'

-- utils
local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end


-- keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>gn", ":Neogit<cr>", opts)

-- reset to initial windows
vim.keymap.set("n", "<leader>wR", function()
  local default_file = '.gitignore'

  vim.cmd([[
    %bd
    Neotree
    call feedkeys("og")
  ]])

  local function split_wins()
    local win_width = vim.fn.winwidth(0)
    local tree_width_percent = 0.18
    local tree_width = vim.fn.floor(win_width * tree_width_percent)
    local left_width_for_buffers_percent = 1 - tree_width_percent
    local wide_buffers_percent = 0.7
    local small_buffers_percent = 1 - wide_buffers_percent

    local wide_buffers_width = vim.fn.floor(win_width * left_width_for_buffers_percent * wide_buffers_percent)
    local small_buffers_width = vim.fn.floor(win_width * left_width_for_buffers_percent * small_buffers_percent)

    vim.cmd(([[
      vsplit %s
      vsplit %s
    ]]):format(default_file, default_file))
    vim.cmd(t('normal <C-h>'))
    vim.cmd(([[
      split %s
      split %s
    ]]):format(default_file, default_file))
    vim.cmd(t('normal <C-l>'))
    vim.cmd(([[
      split %s
    ]]):format(default_file))
    vim.cmd(t('normal <C-h>'))
    vim.cmd(t('normal <C-h>'))
    vim.cmd(([[
      vertical resize %s
    ]]):format(tree_width))
    vim.cmd(t('normal <C-l>'))
    vim.cmd(([[
      vertical resize %s
    ]]):format(small_buffers_width))
    vim.cmd(t('normal <C-l>'))
    vim.cmd(([[
      vertical resize %s
    ]]):format(wide_buffers_width))
  end

  local timer = vim.loop.new_timer()
  timer:start(50, 0, vim.schedule_wrap(split_wins))

end, opts)
