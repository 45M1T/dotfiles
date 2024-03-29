return {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "lua", "javascript", "vim", "vimdoc", "query" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
