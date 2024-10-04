local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local rep = require("luasnip.extras").rep
local ai = require("luasnip.nodes.absolute_indexer")
local d = ls.dynamic_node
local tex = {}
tex.in_beamer = function()
	return vim.b.vimtex["documentclass"] == "beamer"
end

ls.add_snippets('tex', {
	s({ trig = "bfr", dscr = "Beamer frame" },
		fmta([[
        \begin{frame}\frametitle{<>}
           <>
        \end{frame}
      ]],
			{ i(1, 'Frame title'), i(2) }
		), { condition = tex.in_text }
	),
})
