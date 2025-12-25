local ls = require('luasnip')
local s  = ls.snippet
local t  = ls.text_node
local i  = ls.insert_node
local sn = ls.snippet_node
local fmt = require('luasnip.extras.fmt').fmt

-- Make HTML snippets available in ERB files too (html.erb)
ls.filetype_extend("eruby", { "html" })

-- ===== ERB “autopairs” =====
local erb_snippets = {
  -- <% ... %>
  s({ trig = "erb", desc = "ERB tag <% %>" },
    fmt("<% {} %>", { i(1) })
  ),

  -- <%= ... %>
  s({ trig = "erbe", desc = "ERB output tag <%= %>" },
    fmt("<%= {} %>", { i(1) })
  ),

  -- <%# ... %>
  s({ trig = "erbc", desc = "ERB comment tag <%# %>" },
    fmt("<%# {} %>", { i(1) })
  ),

  -- <% ... do %> ... <% end %>
  s({ trig = "erbd", desc = "ERB do/end block" },
    fmt([[
<% {} do %>
  {}
<% end %>
]], { i(1, "item"), i(2) })
  ),
}

ls.add_snippets("eruby", erb_snippets)


-- ===== HTML tag “autopairs” =====
local function tag_snip(tag)
  return s({ trig = tag, wordTrig = true, desc = "<"..tag..">...</"..tag..">" },
    fmt("<{}>{}</{}>", { t(tag), i(1), t(tag) })
  )
end

local html_tags = { "h1", "h2", "h3", "p", "div", "section", "ul", "li" }
local html_snippets = {}

for _, tag in ipairs(html_tags) do
  table.insert(html_snippets, tag_snip(tag))
end

-- Optionally: a generic "tag" snippet that lets you type a tag name at expand time
table.insert(html_snippets,
  s({ trig = "tag", desc = "Generic HTML tag" },
    fmt("<{}>{}</{}>", { i(1, "div"), i(2), i(1) })
  )
)

ls.add_snippets("html", html_snippets)

-- ===== Quality-of-life settings (safe defaults) =====
ls.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = false, -- you can flip to true if you want auto-expansion
})

-- OPTIONAL: manual keymaps (if you ever want them outside of cmp)
-- vim.keymap.set({ "i", "s" }, "<C-k>", function() if ls.expand_or_jumpable() then ls.expand_or_jump() end end, { silent = true })
-- vim.keymap.set({ "i", "s" }, "<C-j>", function() if ls.jumpable(-1) then ls.jump(-1) end end, { silent = true })

