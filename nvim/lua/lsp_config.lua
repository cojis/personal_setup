local lsp = require('lspconfig')
local ts = require('nvim-treesitter.configs')

-- treesitter
ts.setup {
    ensure_installed = "maintained",
    highlight = { enable = true }
}

-- golang
lsp.gopls.setup{}

-- elixir
lsp.elixirls.setup{
    cmd = { "/Users/albertleung/.elixir-ls/release/language_server.sh" };
}

-- rust
lsp.rust_analyzer.setup{
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy diagnostics on save
        checkOnSave = {
          command = "clippy"
        },
      }
    }
}
