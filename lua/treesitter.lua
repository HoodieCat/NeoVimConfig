return{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup
		{
			ensure_installed = {'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python',
			'rust', 'typescript', 'vim', 'yaml',
		},
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
		},
	}
end,
	}
