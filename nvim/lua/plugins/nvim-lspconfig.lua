return {
  "neovim/nvim-lspconfig",
  version = "*",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      eslint = {
        settings = {
          workingDirectories = { mode = "auto" },
        },
      },
    },
    setup = {
      eslint = function()
        local formatter = LazyVim.lsp.formatter({
          name = "eslint: lsp",
          primary = false,
          priority = 200,
          filter = "eslint",
        })

        LazyVim.format.register(formatter)
      end,
    },
  },
}
