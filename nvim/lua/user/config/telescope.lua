return {
    "nvim-lua/plenary.nvim",
    {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('telescope').setup{
                pickers = {
                    find_files = {
                        previewer = false,
                    },
                    file_browser = {
                        previewer = false,
                    },
                    help_tags = {
                        previewer = false,
                    },
                }
            }
        end
    }
}
