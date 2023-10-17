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
    --motions
    require("flash"),
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
    --cmp
    --dap
})
