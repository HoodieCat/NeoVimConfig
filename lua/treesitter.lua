return{
	"nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects", },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup
		{
			ensure_installed = {'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python',
			'rust', 'typescript', 'vim', 'yaml' },
		auto_install = false,
		highlight = { enable = true },
        indent = { enable = true },
        }
    end,
}
