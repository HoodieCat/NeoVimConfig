return{
    "neovim/nvim-lspconfig",
    dependencies = {
        -- automatically install LSPs to stdpath for nvim ,managed by mason
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        -- useful status updates for LSP
        { "j-hui/fidget.nvim", tag = 'legacy', opts = {} },
        "folke/neodev.nvim",
    },
}
