return{
    "preservim/nerdtree",
    lazy = false,
    -- load when wake by shortcuts
    keys = {
        {"<C-t>", "<cmd>NERDTreeToggle<CR>"},
        {"<C-f>", "<cmd>NERDTreeFind<CR>"},
    },
    config = function()
        vim.g.NERDTreeDirArrowExpandable = '+'
        vim.g.NERDTreeDirArrowCollapsible = '-'
        vim.g.NERDTreeSize = 20
    end,
}

