
-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
-- vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
-- vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
-- vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>') 

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    -- these will be buffer-local keybindings
    -- because they only work if you have an active language server

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
  require('lspconfig')[server].setup({
    capabilities = lsp_capabilities,
  })
end

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    default_setup,
  },
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    -- Enter key confirms completion item
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl + space triggers completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})










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
