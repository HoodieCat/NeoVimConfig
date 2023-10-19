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
    "tpope/vim-surround",
    "tpope/vim-repeat",
    "tpope/vim-commentary",
    "wellle/targets.vim",
    "vim-scripts/ReplaceWithRegister",
    --persistence 
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = {},
    },
    --motions
    {
        "ggandor/leap.nvim",
        config = function()
            require('leap').add_default_mappings()
        end
    },
    require("Git"),
    --UI interface /dashboard/statusline/file explore
    require("UI"),
    -- Markdown Preview
    require("Markdown-Preview"),
    --treesitter
    require("treesitter"),
    "lilydjwg/fcitx.vim",
    -- telescope
    require("telescope"),
    --LSP
    require("lsp"),
    --cmp
    {
        -- AutoCompletion
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- snippet engine & its aasociated nvim-cmp source
            "l3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- adds lsp completion capabilities
            "hrsh7th/cmp-nvim-lsp",
            -- adds a number of user-friednly snippets
            "rafamadriz/friendly-snippets",
        },
    },
    --dap
})
