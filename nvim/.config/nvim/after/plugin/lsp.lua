-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
-- vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
-- vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
-- vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = { buffer = event.buf }
    vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<cr>',          opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>',     opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>',    opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>',opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>',     opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>',  '<cmd>lua vim.lsp.buf.rename()<cr>',                         opts)
    vim.keymap.set({'n','x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({ async = true })<cr>',    opts)
    vim.keymap.set('n', '<F4>',  '<cmd>lua vim.lsp.buf.code_action()<cr>',                    opts)
  end
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
  require('lspconfig')[server].setup({
    capabilities = lsp_capabilities,
  })
end

require('mason').setup({})

-- Only use mason-lspconfig's automatic_enable when Neovim supports vim.lsp.enable (0.11+)
local has_lsp_enable = vim.lsp and type(vim.lsp.enable) == 'function'

require('mason-lspconfig').setup({
  ensure_installed = {},
  automatic_enable = has_lsp_enable and true or false,
  handlers = {
    default_setup,
  },
})

local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- add this
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>']     = cmp.mapping.confirm({ select = false }),
    ['<C-Space>']= cmp.mapping.complete(),
    -- NEW: Tab / Shift-Tab to expand or jump through snippet fields
    ['<Tab>'] = function(fallback)
      local luasnip = require('luasnip')
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      local luasnip = require('luasnip')
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
