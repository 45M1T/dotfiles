require('user.lazy')
require('user.keymaps')
require('user.options')

vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.fillchars:append { eob = " " }
vim.opt.laststatus=3

vim.cmd[[highlight CursorLine cterm=NONE ctermbg=White guibg=NONE]]
