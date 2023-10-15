return {
    {
        "neovim/nvim-lspconfig",
        event = {"BufReadPost", "BufNewFile" },
        dependencies = {
            "Williamboman/mason.nvim",
            "Williamboman/mason-lspconfig",
            "folke/neoconfg.nvim",
            "folke/neodev.nvim",
        },
        -- config = function()
            --     local servers = {
                --         -- config for lua_language_server
                --         lua_ls = {
                    --             settings = {
                        --                 Lua = {
                            --                     workspace = { checkThirdParty = false,}
                            --                     telemetry = { enable = false, }

                            --                 },
                            --             },
                            --         },
                            --         pyritht = {},
                            --         jsonls = {},
                            -- },
                        },
                        {
                            "williamboman/mason.nvim",
                            build = ":MasonUpdate",
                            config = function()
                                require("mason").setup({
                                    ui = {
                                        icons = {
                                            package_installed = "✓",
                                            package_pending = "➜",
                                            package_uninstalled = "✗",
                                        },
                                    },
                                })
                            end,
                        },
                        -- {
                            --     "folke/neodev.nvim",
                            --     opt = {},
                            --     config = function()
                                --         require("neodev").setup()
                                --     end,
                                -- },
                            }
