local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


require('telescope').setup {
	defaults = {
		layout_config = {
			width = 0.95, -- Overall width of the Telescope window
			preview_cutoff = 10,
			horizontal = {
					mirror = false,
					preview_width = 0.6, -- Adjust this to change the preview window width
			},
			vertical = {
					mirror = false,
			}
	},
		
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<esc>"] = actions.close,
				["<CR>"] = actions.select_default + actions.center
			},
			n = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
			}
		}
	}
 }

-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.live_grep({
--         prompt_title = "What you seek you shall find",
--         vimgrep_arguments = {
--             'rg',
--             '--hidden',
--             '--ignore', '*.git/*',
--             '--no-heading',
--             '--with-filename',
--             '--line-number',
--             '--color=never',
--             '--exclude-dir', 'node_modules',
--             '--exclude-dir', 'public',
--             '--exclude-dir', 'build'
--         },
--     })
-- end, {})




