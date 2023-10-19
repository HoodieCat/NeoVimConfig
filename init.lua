if vim.fn.has("win32") == 1 then
    vim.o.shell = "powershell"
    -- vim.g.shell = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"
end
require("options")
require("keymaps")
require("LazyVim")
require("autocmd")
require("PlugConfig")
-- End

