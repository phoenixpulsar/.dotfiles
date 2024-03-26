-- local lsp = require("lsp-zero")

-- lsp.preset("recommended")

-- local snip_status_ok, luasnip = pcall(require, "luasnip")
-- if not snip_status_ok then
--   return
-- end

-- local check_backspace = function()
--   local col = vim.fn.col "." - 1
--   return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
-- end


-- lsp.ensure_installed({
--   'tsserver',
--   'eslint',
--   'sumneko_lua',
--   'rust_analyzer',
-- })

-- Fix Undefined global 'vim'
-- lsp.configure('sumneko_lua', {
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { 'vim' }
--             }
--         }
--     }
-- })


-- local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--   ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--   ["<C-Space>"] = cmp.mapping.complete(),
--   ["<Tab>"] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--           cmp.select_next_item()
--       elseif luasnip.expandable() then
--           luasnip.expand()
--       elseif luasnip.expand_or_jumpable() then
--           luasnip.expand_or_jump()
--       elseif check_backspace() then
--           fallback()
--       else
--           fallback()
--       end
--   end, { "i", "s"}),
--   ["<S-Tab>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--             cmp.select_prev_item()
--         elseif luasnip.jumpable(-1) then
--             luasnip.jump(-1)
--         else
--             fallback()
--         end
--     end, {"i","s"})
-- })






-- disable completion with tab
-- this helps with copilot setup
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

-- lsp.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })

-- lsp.set_preferences({
--     suggest_lsp_servers = false,
--     sign_icons = {
--         error = 'E',
--         warn = 'W',
--         hint = 'H',
--         info = 'I'
--     }
-- })

-- lsp.on_attach(function(client, bufnr)
--   local opts = {buffer = bufnr, remap = false}

--   if client.name == "eslint" then
--       vim.cmd.LspStop('eslint')
--       return
--   end

--   vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--   vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
--   vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
--   vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
--   vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
--   vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
--   vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
--   vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
--   vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
--   vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
-- end)

-- lsp.setup()

-- vim.diagnostic.config({
--     virtual_text = true,
-- })
