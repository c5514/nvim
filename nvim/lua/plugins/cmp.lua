local cmp = require('cmp')
local luasnip = require('luasnip')
local check_backspace = function()
	local col = vim.fn.col "." - 1
	return col == 0 or vim.fn.getline("."):sub(col,col):match "%s"
end
local kind_icons = {
	Namespace = "󰌗",
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰆧",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈚",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰊄",
    Table = "",
    Object = "󰅩",
    Tag = "",
    Array = "[]",
    Boolean = "",
    Number = "",
	Null = "󰟢",
    String = "󰉿",
    Calendar = "",
    Watch = "󰥔",
    Package = "",
    Copilot = "",
    Codeium = "",
    TabNine = "",
}

cmp.setup {
    snippet = {
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end
    },

    sources = {
		{ name = 'nvim_lsp' },
      	{ name = 'luasnip', option = { show_autosnippets = true } },
		{ name = 'buffer' },
		{ name = 'path' },
    },
	window = {
		completion = {border = "rounded",},
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
	},
	formatting = {
		fields = {"kind", "abbr", "menu"},
		format = function(entry, vim_item)
			vim_item.kind = string.format("%s",kind_icons[vim_item.kind])
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				luasnip = "[Snippet]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
    mapping = {
	  ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = "insert" }),
	  ['<C-j>'] = cmp.mapping.select_next_item({ behavior = "insert" }),
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-1),{"i","c"}),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(1),{"i","c"}),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(),{"i","c"}),
      ['<C-e>'] = cmp.mapping{
		  i = cmp.mapping.abort(),
		  c = cmp.mapping.close(),
	  },
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
			cmp.select_prev_item({ behavior = "insert" })
		    elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
			end, {"i","s"}),
	  ["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item({ behavior = "insert" })
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
			end, {"i","s"}),
    },
}
