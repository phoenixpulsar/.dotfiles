local nnoremap = require("themacedo.keymap").nnoremap

nnoremap("<leader>1", "<cmd>Ex<CR>") 
nnoremap("<leader>h", "<cmd>wincmd h<CR>") 
nnoremap("<leader>j", "<cmd>wincmd j<CR>") 
nnoremap("<leader>k", "<cmd>wincmd k<CR>") 
nnoremap("<leader>l", "<cmd>wincmd l<CR>") 
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>") 
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<C-j>", ":cnext<CR>")
nnoremap("<C-k>", ":cprev<CR>")
nnoremap("<C-f>", ":silent !tmux neww tmux-sessionizer<CR>")

