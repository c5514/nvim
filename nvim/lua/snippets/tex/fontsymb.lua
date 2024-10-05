local ls = require("luasnip")
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local c = ls.choice_node
local f = ls.function_node
-- local rep = require("luasnip.extras").rep
local tex = {}
tex.in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex.in_text = function()
	return not vim.fn['vimtex#syntax#in_mathzone']() == 1
end

ls.add_snippets('tex', {
	s({ trig = "alp", snippetType = "autosnippet", priority = 10 }, t("\\alpha "), {condition = tex.in_mathzone}),
	s({ trig = "bet", snippetType = "autosnippet", priority = 10 }, t("\\beta "), {condition = tex.in_mathzone}),
	s({ trig = "chi", snippetType = "autosnippet", priority = 10 }, t("\\chi "), {condition = tex.in_mathzone}),
	s({ trig = "del", snippetType = "autosnippet", priority = 10 }, t("\\delta "), {condition = tex.in_mathzone}),
	s({ trig = "Del", snippetType = "autosnippet", priority = 10 }, t("\\Delta "), {condition = tex.in_mathzone}),
	s({ trig = "eps", snippetType = "autosnippet", priority = 10 }, t("\\epsilon "), {condition = tex.in_mathzone}),
	s({ trig = "eta", snippetType = "autosnippet", priority = 10 }, t("\\eta "), {condition = tex.in_mathzone}),
	s({ trig = "phi", snippetType = "autosnippet", priority = 10 }, t("\\phi "), {condition = tex.in_mathzone}),
	s({ trig = "Phi", snippetType = "autosnippet", priority = 10 }, t("\\Phi "), {condition = tex.in_mathzone}),
	s({ trig = "gam", snippetType = "autosnippet", priority = 10 }, t("\\gamma "), {condition = tex.in_mathzone}),
	s({ trig = "Gam", snippetType = "autosnippet", priority = 10 }, t("\\Gamma "), {condition = tex.in_mathzone}),
	s({ trig = "iot", snippetType = "autosnippet", priority = 10 }, t("\\iota "), {condtion = tex.in_mathzone}),
	s({ trig = "kap", snippetType = "autosnippet", priority = 10 }, t("\\kappa "), {condition = tex.in_mathzone}),
	s({ trig = "lam", snippetType = "autosnippet", priority = 10 }, t("\\lambda "), {condition = tex.in_mathzone}),
	s({ trig = "Lam", snippetType = "autosnippet", priority = 10 }, t("\\lambda "), {condition = tex.in_mathzone}),
	s({ trig = "mu", snippetType = "autosnippet", priority = 10 }, t("\\mu "), {condition = tex.in_mathzone}),
	s({ trig = "nu", snippetType = "autosnippet", priority = 10 }, t("\\nu "), {condition = tex.in_mathzone}),
	s({ trig = "ome", snippetType = "autosnippet", priority = 10 }, t("\\omega "), {condition = tex.in_mathzone}),
	s({ trig = "Ome", snippetType = "autosnippet", priority = 10 }, t("\\Omega "), {condition = tex.in_mathzone}),
	s({ trig = "pi", snippetType = "autosnippet", priority = 10 }, t("\\pi "), {condition = tex.in_mathzone}),
	s({ trig = "Pi", snippetType = "autosnippet", priority = 10 }, t("\\Pi "), {condition = tex.in_mathzone}),
	s({ trig = "rho", snippetType = "autosnippet", priority = 10 }, t("\\rho "), {condition = tex.in_mathzone}),
	s({ trig = "sig", snippetType = "autosnippet", priority = 10 }, t("\\sigma "), {condition = tex.in_mathzone}),
	s({ trig = "Sig", snippetType = "autosnippet", priority = 10 }, t("\\Sigma "), {condition = tex.in_mathzone}),
	s({ trig = "tau", snippetType = "autosnippet", priority = 10 }, t("\\tau "), {condition = tex.in_mathzone}),
	s({ trig = "ups", snippetType = "autosnippet", priority = 10 }, t("\\upsilon "), {condition = tex.in_mathzone}),
	s({ trig = "Ups", snippetType = "autosnippet", priority = 10 }, t("\\upsilon "), {condition = tex.in_mathzone}),
	s({ trig = "the", snippetType = "autosnippet", priority = 10 }, t("\\theta "), {condition = tex.in_mathzone}),
	s({ trig = "The", snippetType = "autosnippet", priority = 10 }, t("\\Theta "), {condition = tex.in_mathzone}),
	s({ trig = "vrh", snippetType = "autosnippet", priority = 10 }, t("\\varrho "), {condition = tex.in_mathzone}),
	s({ trig = "vep", snippetType = "autosnippet", priority = 10 }, t("\\varepsilon "), {condition = tex.in_mathzone}),
	s({ trig = "vph", snippetType = "autosnippet", priority = 10 }, t("\\varphi "), {condition = tex.in_mathzone}),
	s({ trig = "xi", snippetType = "autosnippet", priority = 10 }, t("\\xi "), {condition = tex.in_mathzone}),
	s({ trig = "Xi", snippetType = "autosnippet", priority = 10 }, t("\\Xi "), {condition = tex.in_mathzone}),
	s({ trig = "psi", snippetType = "autosnippet", priority = 10 }, t("\\psi "), {condition = tex.in_mathzone}),
	s({ trig = "Psi", snippetType = "autosnippet", priority = 10 }, t("\\Psi "), {condition = tex.in_mathzone}),
	s({ trig = "zet", snippetType = "autosnippet", priority = 10 }, t("\\zeta "), {condition = tex.in_mathzone}),
	s({ trig = "ooo", snippetType = "autosnippet" }, t("\\infty "), {condition = tex.in_mathzone}),
	s({ trig = "fall", snippetType = "autosnippet" }, t("\\forall "), {condition = tex.in_mathzone}),
	s({ trig = "exi", snippetType = "autosnippet" }, t("\\exists "), {condition = tex.in_mathzone}),
	s({ trig = "nexi", snippetType = "autosnippet" }, t("\\nexists "), {condition = tex.in_mathzone}),
	s({ trig = "neg", snippetType = "autosnippet" }, t("\\neg "), {condition = tex.in_mathzone}),
	s({ trig = "***", snippetType = "autosnippet" }, t("\\cdots "), {condition = tex.in_mathzone}),
	s({ trig = "...", snippetType = "autosnippet" }, t("\\ldots "), {condition = tex.in_mathzone}),
	s({ trig = " . ", snippetType = "autosnippet" }, t("\\cdot "), {condition = tex.in_mathzone}),
	s({ trig = "xx", snippetType = "autosnippet" }, t("\\times "), {condition = tex.in_mathzone}),
	s({ trig = "oxo", snippetType = "autosnippet" }, t("\\otimes "), {condition = tex.in_mathzone}),
	s({ trig = "opo", snippetType = "autosnippet" }, t("\\oplus "), {condition = tex.in_mathzone}),
	s({ trig = "->", snippetType = "autosnippet", priority = 10 }, t("\\rightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "-<", snippetType = "autosnippet", priority = 10 }, t("\\leftarrow "), {condition = tex.in_mathzone}),
	s({ trig = "b->", snippetType = "autosnippet", priority = 50 }, t("\\leftrightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "=>", snippetType = "autosnippet", priority = 10 }, t("\\Rightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "=<", snippetType = "autosnippet", priority = 10 }, t("\\Leftarrow "), {condition = tex.in_mathzone}),
	s({ trig = "b=>", snippetType = "autosnippet", priority = 50 }, t("\\Leftrightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "-->", snippetType = "autosnippet", priority = 75 }, t("\\longrightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "--<", snippetType = "autosnippet", priority = 75 }, t("\\longleftarrow "), {condition = tex.in_mathzone}),
	s({ trig = "==<", snippetType = "autosnippet", priority = 75 }, t("\\Longrightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "==>", snippetType = "autosnippet", priority = 75 }, t("\\Longleftarrow "), {condition = tex.in_mathzone}),
	s({ trig = "b-->", snippetType = "autosnippet", priority = 100 }, t("\\Longleftrightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "b==>", snippetType = "autosnippet", priority = 100 }, t("\\longleftrightarrow "), {condition = tex.in_mathzone}),
	s({ trig = "neq", snippetType = "autosnippet" }, t("\\neq "), {condition = tex.in_mathzone}),
	s({ trig = "geq", snippetType = "autosnippet" }, t("\\geq "), {condition = tex.in_mathzone}),
	s({ trig = "leq", snippetType = "autosnippet" }, t("\\leq "), {condition = tex.in_mathzone}),
	s({ trig = "appr", snippetType = "autosnippet" }, t("\\approx "), {condition = tex.in_mathzone}),
	s({ trig = "iin", snippetType = "autosnippet" }, t("\\in "), {condition = tex.in_mathzone}),
	s({ trig = "nin", snippetType = "autosnippet" }, t("\\notin "), {condition = tex.in_mathzone}),
	s({ trig = "perp", snippetType = "autosnippet" }, t("\\perp "), {condition = tex.in_mathzone}),
	s({ trig = "||", snippetType = "autosnippet" }, t("\\mid "), {condition = tex.in_mathzone}),
	s({ trig = "~~", snippetType = "autosnippet" }, t("\\sim "), {condition = tex.in_mathzone}),
	s({ trig = "nn", snippetType = "autosnippet" }, t("\\cap "), {condition = tex.in_mathzone}),
	s({ trig = "NN", snippetType = "autosnippet" }, t("\\bigcap "), {condition = tex.in_mathzone}),
	s({ trig = "uu", snippetType = "autosnippet" }, t("\\cup "), {condition = tex.in_mathzone}),
	s({ trig = "UU", snippetType = "autosnippet" }, t("\\bigcup "), {condition = tex.in_mathzone}),
	s({ trig = "<<", snippetType = "autosnippet" }, t("\\ll "), {condition = tex.in_mathzone}),
	s({ trig = ">>", snippetType = "autosnippet" }, t("\\gg "), {condition = tex.in_mathzone}),
	s({ trig = "equiv", snippetType = "autosnippet" }, t("\\equiv "), {condition = tex.in_mathzone}),
	s({ trig = "sq", snippetType = "autosnippet" }, fmta([[\sqrt{<>}]], { i(1) }), {condition = tex.in_mathzone}),
	s({ trig = "sr", snippetType = "autosnippet" }, t("^2"), {condition = tex.in_mathzone}),
	s({ trig = "cb", snippetType = "autosnippet" }, t("^3"), {condition = tex.in_mathzone}),
	s({ trig = "td", snippetType = "autosnippet" }, fmta([[^{<>}]], { i(1) }), {condition = tex.in_mathzone}),
	s({ trig = "__", dscr = "Subscript", snippetType = "autosnippet" }, fmta([[_{<>}]], { i(1) }), {condition = tex.in_mathzone}),
	s({ trig = "cong", snippetType = "autosnippet" }, t("\\cong "), {condition = tex.in_mathzone}),
	s({ trig = "cc", dscr = "Subset " }, t("\\subset ")),
	s({ trig = "///", snippetType = "autosnippet" }, t("\\setminus"), {condition = tex.in_mathzone}),
	s({ trig = "iff", snippetType = "autosnippet" }, t("\\iff"), {condition = tex.in_mathzone}),
	s({ trig = "inv", snippetType = "autosnippet" }, t("^{-1}"), {condition = tex.in_mathzone}),
	s({ trig = "conj", snippetType = "autosnippet" }, fmta([[\overline{<>} ]], { i(1) }), {condition = tex.in_mathzone}),
	s({ trig = "set", dscr = "Set definition" },
		fmta([[<> = \left\{<> \in <>\mid <>\right\}]], { i(1, 'A'), i(2, 'x'), i(3, '\\mathbb{R}'), i(4, 'condition') })),
	s({ trig = "vec", dscr = "\\vec{}" }, fmta([[\vec{<>}]], { i(1) })),
	s({ trig = "em", dscr = "Display '\\emph{}'" }, fmta([[\emph{<>}]], { i(1) })),
	s({ trig = "ovl", dscr = "Display '\\underline{}'" }, fmta([[\overline{<>}]], { i(1) })),
	s({ trig = "udl", dscr = "Display '\\underline{}'" }, fmta([[\underline{<>}]], { i(1) })),
	s({ trig = "it", dscr = "'\\textit{}' or '\\mathit{}'" }, {
		f(function()
			if tex.in_mathzone() then
				return "\\mathit{"
			else
				return "\\textit{"
			end
		end, {}),
		i(1, ""), t("}")
	}),
	s({ trig = "bf", dscr = "'\\mathbf{}' or '\\textbf{}'" }, {
		f(function()
			if tex.in_mathzone() then
				return "\\mathbf{"
			else
				return "\\textbf{"
			end
		end, {}),
		i(1, ""), t("}")
	}),
	s({ trig = "cal", dscr = "'\\mathcal'" }, fmta([[\mathcal{<>}]], { i(1) })),
	s({ trig = "frak", dscr = "'\\mathfrak'" }, fmta([[\mathfrak{<>}]], { i(1) })),
	s({ trig = "bb", dscr = "'\\mathbb'" }, fmta([[\mathbb{<>}]], { i(1) })),
	s({ trig = "sf", dscr = "'\\mathsf'" }, fmta([[\mathsf{<>}]], { i(1) })),
	s({ trig = "()", dscr = "'\\left( \\right)", snippetType = "autosnippet" }, fmta([[\left(<>\right)]], { i(1) }), {condition = tex.in_mathzone}),
	s({ trig = "lr", dscr = "'\\left( \\right)" }, fmta([[\left(<>\right)]], { i(1) })),
	s({ trig = "lr|", dscr = "'\\left| \\right|" }, fmta([[\left|<>\right|]], { i(1) })),
	s({ trig = "lr{", dscr = "'\\left{ \\right}" }, fmta([[\left\{ <> \right\}]], { i(1) })),
	s({ trig = "lrb", dscr = "'\\left{ \\right}" }, fmta([[\left\{ <> \right\}]],{ i(1) })),
	s({ trig = "lrB", dscr = "'\\left[ \\right]" }, { t('\\left['), i(1), t('\\right]') }),
	s({ trig = "lra", dscr = "'leftangle rightangle)" }, fmta([[\left\langle<>\right\rangle]], { i(1) })),
	s({ trig = "norm", dscr = "Norm", snippetType = "autosnippet" }, fmta([[\left\lVert <>\right\rVert]], { i(1) }), {condition = tex.in_mathzone}),
})
