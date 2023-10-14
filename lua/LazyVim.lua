local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- Start Setup
lazy.setup({
    --colorsheme，tabline:
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "SmiteshP/nvim-navic",
            "utilyre/barbecue.nvim",
            "nvim-tree/nvim-web-devicons"
        },
        lazy = false, -- colorscheme load as neovim launch
        priority = 1000, -- high priority for colorscheme
        config = function() 
        -- change colorscheme when load tokyonight
            vim.cmd([[colorscheme tokyonight]]) 
        -- same as vim.cmd.colorscheme("tokyonight")
            require("lualine").setup({
                options = {
                    theme = "tokyonight",
                },
            })
            require("barbecue").setup({
                theme = "tokyonight",
            })
        end
    },
    --Dashboard(start screen)
    {
        "goolord/alpha-nvim",
        dependencies = { 
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end
    },
    --File explorer
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
        --nvim-tree UI config
            require("nvim-tree").setup({
            sort_by = "suffix",
            view = {
                centralize_selection = true,
                width = 25,
            },
            })
        end,
    },

    -- classical edit
    {
        "tpope/vim-surround",
        dependencies = {
            "tpope/vim-repeat",
            "justinmk/vim-sneak",
            "wellle/targets.vim",
            "vim-scripts/ReplaceWithRegister",
            "tpope/vim-commentary",
        },
    },
    -- Markdown Preview
    {
        "iamcco/markdown-preview.nvim",
        ft = { md, },
    },
        build = function()
            -- install when update or init
           vim.fn["mkdp#util#install"]()
        end,
        ft = { md, },
    },
    --treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    --UI interface
    require("UI"),
})

