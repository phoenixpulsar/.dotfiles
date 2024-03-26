vim.g.mapleader = " "

-- old way open netrw new way is nvimtree.lua
-- vim.keymap.set("n", "<leader>1", vim.cmd.Ex)

-- highlight move line up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center up page down a page middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center next prev find middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- switch between windows
vim.keymap.set("n", "<leader>h", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<leader>j", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<leader>k", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>wincmd l<CR>")


-- copy selection on computer clipboar
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- copy line to computer clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- never quit by mistake
vim.keymap.set("n", "Q", "<nop>")

-- find project and run tmux-sessionizer script
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--

-- find files in directory
-- not needed, set in telescope.lua
-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")

-- find file in git directory
-- not needed, set in telescope.lua
-- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")


-- Takes the line below and appends it to your current line wo cursor jumping to end
vim.keymap.set("n", "J", "mzJ`z")

-- paste at end of cursor
-- vim.keymap.set("x", "<leader>p", [["_dP]])
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
