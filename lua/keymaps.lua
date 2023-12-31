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
--tab jump
map('n', '[t' ,':tabNext<CR>')
map('n', ']t' ,':tabprevious<CR>')

map('n', '<leader>q', '<cmd>q<CR>')
map('n', '<leader>w', '<cmd>w<CR>')
map('n', '<leader>qq', '<cmd>wqa<CR>')
map('n', '<leader>c', '<C-w><C-c>')
map('n', '<F3>', ':se paste!<CR>')

--move around windows by hjkl
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

--resorce current config
map('n', '<leader>r', ':so %<CR>')

vim.keymap.set({'n','v'}, '<Space>', '<Nop>')
--deal with wrap
map('n', 'j', 'gj')
map('n', 'k', 'gk')

--diagnose jump
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

--nvim-tree 
map('n', '<C-t>','<cmd>NvimTreeToggle<CR>')
map('n', '<C-f>','<cmd>NvimTreeFindFile<CR>')

--markdown_preview
map('n', '<C-p>', '<cmd>MarkdownPreviewToggle<CR>')

--persistence.nvim working directory status persistence
vim.api.nvim_set_keymap("n", "<leader>sl", [[<cmd>lua require("persistence").load({last=true})<CR>]],{ desc= "[l]oad [s]tatus"})
