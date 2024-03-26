vim.keymap.set("n", "<leader>1", ":NvimTreeToggle<CR>")
require'nvim-tree'.setup {
    -- Other configuration options
    update_focused_file = {
      enable      = true,
      update_cwd  = false,
      ignore_list = {}
    },
    view = {
        width = 35,
        side = "left"
    }
}