return {
    --colorsheme
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        priority = 1000, -- high priority for colorscheme
        config = function() 
            -- change colorscheme when load tokyonight
            vim.cmd([[colorscheme tokyonight]]) 
            -- same as vim.cmd.colorscheme("tokyonight")
        end
    },
    -- StatusBar
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                theme = "tokyonight",
                icons_enabled = false,
                component_separators = '|',
                section_separators = '',
            },
            tabline = {
                lualine_a = {'buffers'},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        },
    },
    --Dashboard(start screen)
    {
        "goolord/alpha-nvim",
        dependencies = { 
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            -- use theme startify as default
            require("alpha").setup(require("alpha.themes.startify").config)
        end
    },
    {
        -- Indent Line
        -- use lhzy.nvim main/opts format rather than config = function for simple config
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = {},
    },
    -- file explorer much prettier than nerdtree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    -- default is 30 a bit wider
                    width = 25,
                },
                renderer = {
                    -- node with one file only show itself  
                    group_empty = true,
                },
                filters = {
                    -- default hidden file invisible
                    dotfiles = true,
                },
            }
        end,
    },
}
