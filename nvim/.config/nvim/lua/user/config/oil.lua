return {
  'stevearc/oil.nvim',
  config = function()
      require("oil").setup {
          keymaps = {
              ["<C-h"] = false,
              ["<M-h"] = "actions.select_split",
          },
          view_options = {
              show_hidden = true
          }
      }
      vim.keymap.set("n", "-", "<cmd>Oil<CR>")
  end
}
