-- Page For AutoCmd
local autogroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- HighLight when Yanked last 800ms
autogroup("YankHighLight", { clear = true})
autocmd("TextYankPost", {
    group = "YankHighLight",
    callback = function()
        vim.highlight.on_yank({ higroup = "Incsearch", timeout = "800" })
    end
})
--don't continue comment with enter /if normal "O"/"o" press <C-u>
autocmd('BufEnter',{
    command = "set fo-=c fo=r fo=o"
})

--back to the place last time leave
vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
                vim.cmd("norm! g`\"")
                vim.cmd("silent! foldopen")
        end
    end,
})
-- vim.api.nvim_create_autocmd("BufReadPost", {
--     callback = function()
--         if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
--             vim.cmd("norm! g`\"")
--             -- vim.fn.setpos(".", vim.fn.getpos("'\""))
--             vim.cmd("silent! foldopen")
--         end
--     end,
-- })

-- autosave the edited content
-- if options.auto_save then

