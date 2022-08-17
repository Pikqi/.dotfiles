local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  --filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  --capabilities = capabilities
}

--lspconfig.eslint.setup {
--  on_attach = on_attach
--}


lspconfig.pyright.setup {
  on_attach = on_attach
}

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
    }
  }
}
lspconfig.clangd.setup {
  on_attach = on_attach
}
