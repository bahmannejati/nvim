-- https://www.lazyvim.org/configurations

return {
  {
    "LazyVim/LazyVim",
    opts = {
      icons = {
        kinds = {
          Codeium = " ",
        },
      },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        shade_terminals = false,
        -- add --login so ~/.zprofile is loaded
        -- https://vi.stackexchange.com/questions/16019/neovim-terminal-not-reading-bash-profile/16021#16021
        shell = "/bin/bash --login",
        autochdir = true,
      })
    end,
    keys = {
      { [[<C-\>]] },
      { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
      {
        "<leader>td",
        "<cmd>ToggleTerm size=100 direction=horizontal<cr>",
        desc = "Open a horizontal terminal at the Desktop directory",
      },
    },
  },
  pcall(require, "keymaps") and require("keymaps").plugins or nil,
}
