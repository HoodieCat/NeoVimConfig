-- local define
local o = vim.o
local buffer = vim.b
local global = vim.g

o.cursorline = true

-- number
o.number = true
o.relativenumber = true

-- font
o.showmode = false

-- case 
o.ignorecase = true
o.smartcase = true

o.scrolloff = 5
-- menu
o.wildmode = "full"

-- extra file generate
o.undofile = false
o.swapfile = false
o.backup = false

-- tab behavier
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4

-- indent 
o.autoindent = true
o.smartindent = true

-- search 
o.hlsearch = true
o.incsearch = true
o.expandtab = true

o.mouse = 'a'
o.clipboard = 'unnamedplus'
o.completeopt = 'menu,noinsert,noselect'
o.showmatch = true
o.foldmethod = 'marker'
o.splitright = true
o.splitbelow = true
o.linebreak = true
o.termguicolors = true
o.laststatus = 3
o.hidden = true o.history = 100
o.lazyredraw = true
o.updatetime = 250
o.shiftround = true
o.wrap = true
--disable some unnecessary plugin
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}  
for _, plugin in pairs(disabled_built_ins) do 
    global["loaded_" .. plugin] = 1
end
