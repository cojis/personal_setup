local lsp = require('lspconfig')
local ts = require('nvim-treesitter.configs')

-- treesitter
ts.setup {
    ensure_installed = "maintained",
    highlight = { enable = true }
}

lsp.gopls.setup{}
lsp.elixirls.setup{
    cmd = { "/Users/albertleung/.elixir-ls/release/language_server.sh" };
}
