return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lsp + autocomplete
  use { 'neovim/nvim-lspconfig' }
  use {
  "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-buffer",
      }
  }
  use { "hrsh7th/cmp-nvim-lsp" } -- lsp source for nvim-cmp
  use { "saadparwaiz1/cmp_luasnip" } -- snippets source for nvim-cmp
  use { "L3MON4D3/LuaSnip" } -- snippets plugin (? what is this)

  -- syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- fuzzy finding
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

  -- nerdtree
  use { 'preservim/nerdtree' }

  -- colorscheme
  -- use { 'NTBBloodbath/doom-one.nvim' }
  use { 'romgrk/doom-one.vim' }

  -- golang
  use { 'fatih/vim-go' }
end)
