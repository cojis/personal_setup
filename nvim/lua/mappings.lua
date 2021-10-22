local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- window navigation
map('n', '<leader>a', ':cclose<CR>')
map('n', '<leader>h', ':wincmd h<CR>')
map('n', '<leader>j', ':wincmd j<CR>')
map('n', '<leader>k', ':wincmd k<CR>')
map('n', '<leader>l', ':wincmd l<CR>')
map('n', '<leader>s', ':wincmd r<CR>')

-- telescope bindings
map('n', '<leader>sf', '<cmd>Telescope find_files<cr>')
map('n', '<leader>sg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>sb', '<cmd>Telescope buffers<cr>')

-- nerdtree bindings
map('n', '<leader>n', ':NERDTreeToggle<CR>')
map('n', '<leader>nr', ':NERDTreeFind<CR>')
