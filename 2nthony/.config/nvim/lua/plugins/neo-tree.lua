return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = true,
  cmd = "Neotree",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_gitignored = true,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
        },
        never_show = {
          ".DS_Store",
        },
        always_show = {
          ".env",
          ".env.local",
        },
      },
    },
    window = {
      width = 40,
      mappings = {
        ["s"] = "",
        ["S"] = "",
        ["<C-x>"] = "",
        ["<tab>"] = "open",
        ["<C-s>"] = "open_split",
        ["<C-v>"] = "open_vsplit",
        ["<C-f>"] = "clear_filter",
        ["g?"] = "show_help",
        ["/"] = "", -- default search down
        ["?"] = "", --default search above
      },
    },
    nesting_rules = {
      ["js"] = { "js.map" },
    },
  },
}
