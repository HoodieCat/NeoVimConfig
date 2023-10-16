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
autocmd("BufReadPost", {
    callback = function()
        if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
                vim.cmd("norm! g`\"")
                vim.cmd("silent! foldopen")
        end
    end,
})
-- close nerdtree when only nerdtree left
autogroup("NerdTreeClose", {clear = true})
autocmd("BufEnter", {
    group = "NerdTreeClose",
    callback = function()
        vim.cmd([[ autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]) 
    end
})
