-- typescript.nvim archived

return {
  { import = "lazyvim.plugins.extras.lang.typescript" },

  {
    "nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            completions = {
              completeFunctionCalls = false,
            },
            inlayHints = {
              includeInlayVariableTypeHints = true,
            },
            typescript = {
              format = {
                indentSize = 10,
                tabSize = 10
              },
              preferences = {
                quoteStyle = "single"
              }
            },
            javascript = {
              format = {
                indentSize = 10,
                tabSize = 10
              },
              preferences = {
                quoteStyle = "single"
              }
            }
          },
        },
      },
    },
  },
}
