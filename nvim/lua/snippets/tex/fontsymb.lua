local ls = require("luasnip")
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local rep = require("luasnip.extras").rep
local tex = {}
tex.in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex.in_text = function()
	return not vim.fn['vimtex#syntax#in_mathzone']() == 1
end

ls.add_snippets('tex', {
	s({ trig = ",a", snippetType = "autosnippet", priority = 10 }, t("\\alpha"), { condition = tex.in_mathzone }),
	s({ trig = ",b", snippetType = "autosnippet", priority = 10 }, t("\\beta"), { condition = tex.in_mathzone }),
	s({ trig = ",c", snippetType = "autosnippet", priority = 10 }, t("\\chi"), { condition = tex.in_mathzone }),
	s({ trig = ",d", snippetType = "autosnippet", priority = 10 }, t("\\delta"), { condition = tex.in_mathzone }),
	s({ trig = ",D", snippetType = "autosnippet", priority = 10 }, t("\\Delta"), { condition = tex.in_mathzone }),
	s({ trig = ",ep", snippetType = "autosnippet", priority = 10 }, t("\\epsilon"), { condition = tex.in_mathzone }),
	s({ trig = ",et", snippetType = "autosnippet", priority = 10 }, t("\\eta"), { condition = tex.in_mathzone }),
	s({ trig = ",ph", snippetType = "autosnippet", priority = 10 }, t("\\phi"), { condition = tex.in_mathzone }),
	s({ trig = ",PH", snippetType = "autosnippet", priority = 10 }, t("\\Phi"), { condition = tex.in_mathzone }),
	s({ trig = ",g", snippetType = "autosnippet", priority = 10 }, t("\\gamma"), { condition = tex.in_mathzone }),
	s({ trig = ",G", snippetType = "autosnippet", priority = 10 }, t("\\Gamma"), { condition = tex.in_mathzone }),
	s({ trig = ",i", snippetType = "autosnippet", priority = 10 }, t("\\iota"), { condtion = tex.in_mathzone }),
	s({ trig = ",k", snippetType = "autosnippet", priority = 10 }, t("\\kappa"), { condition = tex.in_mathzone }),
	s({ trig = ",l", snippetType = "autosnippet", priority = 10 }, t("\\lambda"), { condition = tex.in_mathzone }),
	s({ trig = ",L", snippetType = "autosnippet", priority = 10 }, t("\\Lambda"), { condition = tex.in_mathzone }),
	s({ trig = ",m", snippetType = "autosnippet", priority = 10 }, t("\\mu"), { condition = tex.in_mathzone }),
	s({ trig = ",n", snippetType = "autosnippet", priority = 10 }, t("\\nu"), { condition = tex.in_mathzone }),
	s({ trig = ",o", snippetType = "autosnippet", priority = 10 }, t("\\omega"), { condition = tex.in_mathzone }),
	s({ trig = ",O", snippetType = "autosnippet", priority = 10 }, t("\\Omega"), { condition = tex.in_mathzone }),
	s({ trig = ",pi", snippetType = "autosnippet", priority = 10 }, t("\\pi"), { condition = tex.in_mathzone }),
	s({ trig = ",PI", snippetType = "autosnippet", priority = 10 }, t("\\Pi"), { condition = tex.in_mathzone }),
	s({ trig = ",r", snippetType = "autosnippet", priority = 10 }, t("\\rho"), { condition = tex.in_mathzone }),
	s({ trig = ",s", snippetType = "autosnippet", priority = 10 }, t("\\sigma"), { condition = tex.in_mathzone }),
	s({ trig = ",S", snippetType = "autosnippet", priority = 10 }, t("\\Sigma"), { condition = tex.in_mathzone }),
	s({ trig = ",t", snippetType = "autosnippet", priority = 10 }, t("\\tau"), { condition = tex.in_mathzone }),
	s({ trig = ",u", snippetType = "autosnippet", priority = 10 }, t("\\upsilon"), { condition = tex.in_mathzone }),
	s({ trig = ",U", snippetType = "autosnippet", priority = 10 }, t("\\upsilon"), { condition = tex.in_mathzone }),
	s({ trig = ",t", snippetType = "autosnippet", priority = 10 }, t("\\theta"), { condition = tex.in_mathzone }),
	s({ trig = ",T", snippetType = "autosnippet", priority = 10 }, t("\\Theta"), { condition = tex.in_mathzone }),
	s({ trig = ",vr", snippetType = "autosnippet", priority = 10 }, t("\\varrho"), { condition = tex.in_mathzone }),
	s({ trig = ",ve", snippetType = "autosnippet", priority = 10 }, t("\\varepsilon"), { condition = tex.in_mathzone }),
	s({ trig = ",vp", snippetType = "autosnippet", priority = 10 }, t("\\varphi"), { condition = tex.in_mathzone }),
	s({ trig = ",x", snippetType = "autosnippet", priority = 10 }, t("\\xi"), { condition = tex.in_mathzone }),
	s({ trig = ",X", snippetType = "autosnippet", priority = 10 }, t("\\Xi"), { condition = tex.in_mathzone }),
	s({ trig = ",ps", snippetType = "autosnippet", priority = 10 }, t("\\psi"), { condition = tex.in_mathzone }),
	s({ trig = ",PS", snippetType = "autosnippet", priority = 10 }, t("\\Psi"), { condition = tex.in_mathzone }),
	s({ trig = ",z", snippetType = "autosnippet", priority = 10 }, t("\\zeta"), { condition = tex.in_mathzone }),
	s({ trig = "ooo", snippetType = "autosnippet" }, t("\\infty"), { condition = tex.in_mathzone }),
	s({ trig = "fall", snippetType = "autosnippet" }, t("\\forall"), { condition = tex.in_mathzone }),
	s({ trig = "AA", snippetType = "autosnippet" }, t("\\forall"), { condition = tex.in_mathzone }),
	s({ trig = "exi", snippetType = "autosnippet" }, t("\\exists"), { condition = tex.in_mathzone }),
	s({ trig = "nexi", snippetType = "autosnippet" }, t("\\nexists"), { condition = tex.in_mathzone }),
	s({ trig = "neg", snippetType = "autosnippet" }, t("\\neg"), { condition = tex.in_mathzone }),
	s({ trig = "***", snippetType = "autosnippet" }, t("\\cdots"), { condition = tex.in_mathzone }),
	s({ trig = "...", snippetType = "autosnippet" }, t("\\ldots"), { condition = tex.in_mathzone }),
	s({ trig = " . ", snippetType = "autosnippet" }, t("\\cdot"), { condition = tex.in_mathzone }),
	s({ trig = "xx", snippetType = "autosnippet" }, t("\\times"), { condition = tex.in_mathzone }),
	s({ trig = "oxo", snippetType = "autosnippet" }, t("\\otimes"), { condition = tex.in_mathzone }),
	s({ trig = "opo", snippetType = "autosnippet" }, t("\\oplus"), { condition = tex.in_mathzone }),
	s({ trig = "to", snippetType = "autosnippet", priority = 10 }, t("\\longmapsto"), { condition = tex.in_mathzone }),
	s({ trig = "->", snippetType = "autosnippet", priority = 10 }, t("\\rightarrow"), { condition = tex.in_mathzone }),
	s({ trig = "rar", snippetType = "autosnippet", priority = 10 }, t("\\longrightarrow"),{ condition = tex.in_mathzone }),
	s({ trig = "-<", snippetType = "autosnippet", priority = 10 }, t("\\leftarrow"), { condition = tex.in_mathzone }),
	s({ trig = "lar", snippetType = "autosnippet", priority = 10 }, t("\\longleftarrow "),
		{ condition = tex.in_mathzone }),
	s({ trig = "b->", snippetType = "autosnippet", priority = 50 }, t("\\leftrightarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "=>", snippetType = "autosnippet", priority = 10 }, t("\\Rightarrow"), { condition = tex.in_mathzone }),
	s({ trig = "=<", snippetType = "autosnippet", priority = 10 }, t("\\Leftarrow"), { condition = tex.in_mathzone }),
	s({ trig = "b=>", snippetType = "autosnippet", priority = 50 }, t("\\Leftrightarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "-->", snippetType = "autosnippet", priority = 75 }, t("\\longrightarrow"), { condition = tex
	.in_mathzone }),
	s({ trig = "--<", snippetType = "autosnippet", priority = 75 }, t("\\longleftarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "==<", snippetType = "autosnippet", priority = 75 }, t("\\Longleftarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "the", snippetType = "autosnippet", priority = 75 }, t("\\Longrightarrow"), { condition = tex
	.in_mathzone }),
	s({ trig = "==>", snippetType = "autosnippet", priority = 75 }, t("\\Longrightarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "b-->", snippetType = "autosnippet", priority = 100 }, t("\\Longleftrightarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "b==>", snippetType = "autosnippet", priority = 100 }, t("\\longleftrightarrow"),
		{ condition = tex.in_mathzone }),
	s({ trig = "neq", snippetType = "autosnippet" }, t("\\neq"), { condition = tex.in_mathzone }),
	s({ trig = "geq", snippetType = "autosnippet" }, t("\\geq"), { condition = tex.in_mathzone }),
	s({ trig = "leq", snippetType = "autosnippet" }, t("\\leq"), { condition = tex.in_mathzone }),
	s({ trig = "apr", snippetType = "autosnippet" }, t("\\approx"), { condition = tex.in_mathzone }),
	s({ trig = "iin", snippetType = "autosnippet" }, t("\\in"), { condition = tex.in_mathzone }),
	s({ trig = "nin", snippetType = "autosnippet" }, t("\\notin"), { condition = tex.in_mathzone }),
	s({ trig = "perp", snippetType = "autosnippet" }, t("\\perp"), { condition = tex.in_mathzone }),
	s({ trig = "||", snippetType = "autosnippet" }, t("\\mid"), { condition = tex.in_mathzone }),
	s({ trig = "~~", snippetType = "autosnippet" }, t("\\sim"), { condition = tex.in_mathzone }),
	s({ trig = "nn", snippetType = "autosnippet" }, t("\\cap"), { condition = tex.in_mathzone }),
	s({ trig = "NN", snippetType = "autosnippet" }, t("\\bigcap"), { condition = tex.in_mathzone }),
	s({ trig = "uu", snippetType = "autosnippet" }, t("\\cup"), { condition = tex.in_mathzone }),
	s({ trig = "UU", snippetType = "autosnippet" }, t("\\bigcup"), { condition = tex.in_mathzone }),
	s({ trig = "<<", snippetType = "autosnippet" }, t("\\ll"), { condition = tex.in_mathzone }),
	s({ trig = ">>", snippetType = "autosnippet" }, t("\\gg"), { condition = tex.in_mathzone }),
	s({ trig = "equiv", snippetType = "autosnippet" }, t("\\equiv"), { condition = tex.in_mathzone }),
	s({ trig = "sq", snippetType = "autosnippet" }, fmta([[\sqrt{<>}]], { i(1) }), { condition = tex.in_mathzone }),
	s({ trig = "sr", snippetType = "autosnippet" }, t("^2"), { condition = tex.in_mathzone }),
	s({ trig = "cb", snippetType = "autosnippet" }, t("^3"), { condition = tex.in_mathzone }),
	s({ trig = "td", snippetType = "autosnippet" }, fmta([[^{<>}]], { i(1) }), { condition = tex.in_mathzone }),
	s({ trig = "__", dscr = "Subscript", snippetType = "autosnippet" }, fmta([[_{<>}]], { i(1) }),
		{ condition = tex.in_mathzone }),
	s({ trig = "cong", snippetType = "autosnippet" }, t("\\cong"), { condition = tex.in_mathzone }),
	s({ trig = "cc", dscr = "Subset " }, t("\\subset ")),
	s({ trig = "///", snippetType = "autosnippet" }, t("\\setminus"), { condition = tex.in_mathzone }),
	s({ trig = "iff", snippetType = "autosnippet" }, t("\\iff"), { condition = tex.in_mathzone }),
	s({ trig = "inv", snippetType = "autosnippet" }, t("^{-1}"), { condition = tex.in_mathzone }),
	s({ trig = "conj", snippetType = "autosnippet" }, fmta([[\overline{<>} ]], { i(1) }), { condition = tex.in_mathzone }),
	s({ trig = "adj", snippetType = "autosnippet" }, fmta([[{<>}^\dagger ]], { i(1) }), { condition = tex.in_mathzone }),
	s({ trig = "dag", snippetType = "autosnippet" }, t("^\\dagger"), { condition = tex.in_mathzone }),
	s({ trig = "set", dscr = "Set definition" },
		fmta([[<> = \left\{<> \in <>\mid <>\right\}]], { i(1, 'A'), i(2, 'x'), i(3, '\\mathbb{R}'), i(4, 'condition') })),
	s({ trig = "vec", dscr = "\\vec{}", snippetType = "autosnippet" }, fmta([[\vec{<>}]], { i(1) }),{ condition = tex.in_mathzone }),
	s({ trig = "seq", dscr = "Sequence", snippetType = "autosnippet" }, fmta([[(<>_{<>})_{<>\in <>}]], { i(1),i(2),rep(2),i(3) }),{ condition = tex.in_mathzone }),
	s({ trig = "em", dscr = "Display '\\emph{}'" }, fmta([[\emph{<>}]], { i(1) })),
	s({ trig = "bar", snippetType = "autosnippet" ,dscr = "Display '\\underline{}'" }, fmta([[\overline{<>}]], { i(1) }),{ condition = tex.in_mathzone}),
	s({ trig = "hat", snippetType="autosnippet",dscr = "Display '\\hat{}'" }, fmta([[\hat{<>}]], { i(1) }),{condition = tex.in_mathzone}),
	s({ trig = "udl", snippetType = "autosnippet",dscr = "Display '\\underline{}'" }, fmta([[\underline{<>}]], { i(1) })),
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
	s({ trig = "bf", dscr = "Bold font" }, {
		f(function()
			if tex.in_mathzone() then
				return "\\mathbf{"
			else
				return "\\textbf{"
			end
		end, {}),
		i(1, ""), t("}")
	}),
	s({ trig = "cal", dscr = "Calligraphic math font" }, fmta([[\mathcal{<>}]], { i(1) })),
	s({ trig = "frak", dscr = "Euler Fraktur math font" }, fmta([[\mathfrak{<>}]], { i(1) })),
	s({ trig = "bb", dscr = "Blackboard bold math font" }, fmta([[\mathbb{<>}]], { i(1) })),
	s({ trig = "sf", dscr = "Sans serif math font" }, fmta([[\mathsf{<>}]], { i(1) })),
	s({ trig = "rm", dscr = "Roman math font" }, fmta([[\mathrm{<>}]], { i(1) })),
	s({ trig = "()", dscr = "'\\left( \\right)", snippetType = "autosnippet" }, fmta([[\left(<>\right)]], { i(1) }),
		{ condition = tex.in_mathzone }),
	s({ trig = "lr", dscr = "'\\left( \\right)" }, fmta([[\left(<>\right)]], { i(1) })),
	s({ trig = "lr|", dscr = "'\\left| \\right|" }, fmta([[\left|<>\right|]], { i(1) })),
	s({ trig = "lr{", dscr = "'\\left{ \\right}" }, fmta([[\left\{ <> \right\}]], { i(1) })),
	s({ trig = "lrB", dscr = "'\\left{ \\right}" }, fmta([[\left\{ <> \right\}]], { i(1) })),
	s({ trig = "lrb", dscr = "'\\left[ \\right]" }, { t('\\left['), i(1), t('\\right]') }),
	s({ trig = "lra", dscr = "'leftangle rightangle)" }, fmta([[\left\langle<>\right\rangle]], { i(1) })),
	s({ trig = "norm", dscr = "Norm", snippetType = "autosnippet" }, fmta([[\left\lVert <>\right\rVert]], { i(1) }),
		{ condition = tex.in_mathzone }),
	s({ trig = "floor", dscr = "Floor function", snippetType = "autosnippet" }, fmta([[\left\lfloor<>\right\rfloor]], { i(1) }),
		{ condition = tex.in_mathzone }),
	s({ trig = "bk", dscr = "Braket notation" }, fmta([[\braket{<>}{<>}]], { i(1), i(2) }), { condition = tex
	.in_mathzone }),
	s({ trig = "kb", dscr = "ketbra notation" }, fmta([[\ketbra{<>}{<>}]], { i(1), i(2) }),
		{ condition = tex.in_mathzone }),
	s({ trig = "bra", dscr = "bra notation" }, fmta([[\bra{<>}]], { i(1) }), { condition = tex.in_mathzone }),
	s({ trig = "ket", dscr = "ket notation" }, fmta([[\ket{<>}]], { i(1) }), { condition = tex.in_mathzone }),
	s({ trig = "sin", dscr = "Sin function", snippetType = "autosnippet" }, {t("\\sin")}, { condition = tex.in_mathzone }),
	s({ trig = "cos", dscr = "Cos function", snippetType = "autosnippet" }, {t("\\cos")}, { condition = tex.in_mathzone }),
	s({ trig = "tan", dscr = "Tan function", snippetType = "autosnippet" }, {t("\\tan")}, { condition = tex.in_mathzone }),
	s({ trig = "cot", dscr = "Cot function", snippetType = "autosnippet" }, {t("\\cot")}, { condition = tex.in_mathzone }),
	s({ trig = "sec", dscr = "Sec function", snippetType = "autosnippet" }, {t("\\sec")}, { condition = tex.in_mathzone }),
	s({ trig = "csc", dscr = "Csc function", snippetType = "autosnippet" }, {t("\\csc")}, { condition = tex.in_mathzone }),
	s({ trig = "asin", dscr = "Arcsin function", snippetType = "autosnippet" }, {t("\\arcsin")}, { condition = tex.in_mathzone }),
	s({ trig = "acos", dscr = "Arccos function", snippetType = "autosnippet" }, {t("\\arccos")}, { condition = tex.in_mathzone }),
	s({ trig = "atan", dscr = "Arctan function", snippetType = "autosnippet" }, {t("\\arctan")}, { condition = tex.in_mathzone }),
	s({ trig = "acot", dscr = "Arccot function", snippetType = "autosnippet" }, {t("\\arccot")}, { condition = tex.in_mathzone }),
	s({ trig = "asec", dscr = "Arcsec function", snippetType = "autosnippet" }, {t("\\arcsec")}, { condition = tex.in_mathzone }),
	s({ trig = "acsc", dscr = "Arccsc function", snippetType = "autosnippet" }, {t("\\arccsc")}, { condition = tex.in_mathzone }),
})
