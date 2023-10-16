return{
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    keys = {
        { "<leader>od", "<cmd>lua require('telescope.builtin').oldfiles()<cr>"},
        { "<leader>bf", "<cmd>lua require('telescope.buitin').buffers<cr>"},
        { "<leader>cb", function()
            require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown{
                winblend = 10,
                previewer = true,
            })
        end
    },
    { "<leader>fi", "<cmd>lua require('telescope.builtin').find_files()<cr>"},
    { "<leader>rg", "<cmd>lua require('telescope.builtin').live_grep()<cr>"},
    { "<leader>ft", "<cmd>lua require('telescope.builtin').help_tags()<cr>"},
    { "<leader>fb", "<cmd>lua require('telescope.builtin').builtin()<cr>"},
    { "<leader>fm", "<cmd>lua require('telescope.builtin').marks()<cr>"},
    { "<leader>fx", "<cmd>lua require('telescope.builtin').quickfix()<cr>"},
},
    config = function()
        require("telescope").setup {
            extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
            },
        },
    }
end
}
