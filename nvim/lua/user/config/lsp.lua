return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()

        local signs = {

            { name = "DiagnosticSignError", text = " " },
            { name = "DiagnosticSignWarn", text = " " },
            { name = "DiagnosticSignHint", text = " " },
            { name = "DiagnosticSignInfo", text = " " },
        }

        for _, sign in ipairs(signs) do
            vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
        end

        require("mason").setup({
            signs = {
                active = signs, -- show signs
            },
        })
        require('mason-lspconfig').setup({
            ensure_installed = { "lua_ls" },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup{
                        on_attach = on_attach,
                        capabilities = capabilities
                    }
                end
            }
        })
    end
}
