local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("lsp-format").setup {}

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettierd.with({ extra_filetypes = { 'astro' } }),
    null_ls.builtins.formatting.eslint_d.with({ extra_filetypes = { 'astro' } }),
    null_ls.builtins.diagnostics.eslint_d.with({ diagnostics_format = '[eslint] #{m}\n(#{c})' }),
    null_ls.builtins.code_actions.eslint_d.with({ extra_filetypes = { 'astro' } })
  },
  debug = true,
  on_attach = require('lsp-format').on_attach
}

vim.api.nvim_create_user_command(
  'DisableLspFormatting',
  function()
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
  end,
  { nargs = 0 }
)

