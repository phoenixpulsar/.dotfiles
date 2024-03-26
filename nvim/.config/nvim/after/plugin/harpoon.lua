local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>t", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>z", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>x", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>c", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>v", function() ui.nav_file(4) end)
