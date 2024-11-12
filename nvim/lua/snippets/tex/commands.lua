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
	s({ trig = "class", dscr = "Display '\\documentclass'" },
		fmta([[\documentclass{<>}]], { i(1) })),
	s({ trig = "pkg", dscr = "Display '\\usepackage'" },
		fmta([[\usepackage{<>}]], { i(1) })),
	s({ trig = "ltikz", dscr = "Display '\\usetikzlibrary'" },
		fmta([[\usetikzlibrary{<>}]], { i(1) })),
	s({ trig = "cite", dscr = "Display '\\cite'" },
		fmta([[\cite{<>}]], {i(1)})),
	s({ trig = "ref", dscr = "Display '\\ref'" },
		fmta([[\ref{<>}]], {i(1)})),
	s({ trig = "eref", dscr = "Display '\\eqref'" },
		fmta([[\eqref{<>}]], {i(1)})),
	s({ trig = "%##", snippetType = "autosnippet" }, t(
		"% ──────────────────────────────────────────────────────────────────────"
	))
})
