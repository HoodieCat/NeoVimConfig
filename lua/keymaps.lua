local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--leader = <Space>
vim.g.mapleader =' '
--------------------
--Neovim shortcuts
--------------------
map('n', '<leader>l', ':<C-u>nohls<CR>')
--buffer jump
map('n', '[b' ,':bprevious<CR>')
map('n', ']b' ,':bn<CR>')

map('n', '<leader>q', ':q<CR>')
map('n', '<leader>qq', ':qa!<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>c', '<C-w><C-c>')
map('n', '<F3>', ':se paste!')

--move around windows by hjkl
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

--resorce current config
map('n', '<leader>r', ':so %<CR>')

-- NvimTree
map('n', '<C-t>', ':NvimTreeToggle<CR>')
map('n', '<C-f>', ':NvimTreeFindFile<CR>')

--vim.sneak
map('n', 'f', '<Plug>Sneak_f')
map('n', 'F', '<Plug>Sneak_F')
map('n', 't', '<Plug>Sneak_t')
map('n', 'T', '<Plug>Sneak_T')

--vim.flash
