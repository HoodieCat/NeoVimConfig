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
        -- set telescope keymap until press the keys
        -- old files
         { "<leader>od", "<cmd>lua require('telescope.builtin').oldfiles()<cr>"},
        -- buffers 
         { "<leader>bf", "<cmd>lua require('telescope.builtin').buffers({ sort_mru = true })<cr>" },
         { "<leader>cb", function()
             require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown{
                 winblend = 30,
                 previewer = true,
             })
         end
         },
        { "<leader>fi", function() require('telescope.builtin').find_files() end},
        { "<leader>rg", function() require('telescope.builtin').live_grep() end},
        { "<leader>ft", function() require('telescope.builtin').help_tags() end},
        { "<leader>fb", function() require('telescope.builtin').builtin() end},
        { "<leader>fm", function() require('telescope.builtin').marks() end},
        { "<leader>fx", function() require('telescope.builtin').quickfix() end},
        },
        config = function()
            -- call telescope.extension.fzf if installed ,set fzf default config
            if pcall(require("telescope").load_extensions, 'fzf') then
            require("telescope").setup{
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                }
            }
        }
        end
    end,
}
