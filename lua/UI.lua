return {
    --colorsheme
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false, -- colorscheme load as neovim launch
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
        -- use lazy.nvim main/opts format rather than config = function for simple config
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = {},
    },
}
