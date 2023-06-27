-- vim.lsp.set_log_level("debug")

local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

protocol.CompletionItemKind = {
  '', -- Text
  '󰊕', -- Method
  '󰊕', -- Function
  '󰊕', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  '󰜰', -- Interface
  '󰏗', -- Module
  '', -- Property
  '', -- Unit
  '󰎠', -- Value
  '', -- Enum
  '󰌋', -- Keyword
  '󰘍', -- Snippet
  '', -- Color
  '', -- File
  '󰆑', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  '󰘧', -- Operator
  '', -- TypeParameter
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

nvim_lsp.tailwindcss.setup {
  capabilities = capabilities
}

nvim_lsp.cssls.setup {
  capabilities = capabilities
}

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = "󰅚 ", Warn = " ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
