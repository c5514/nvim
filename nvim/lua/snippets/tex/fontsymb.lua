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
local extras = require("luasnip.extras")
local l = extras.lambda
local postfix = require("luasnip.extras.postfix").postfix
local tex = {}
tex.in_mathzone = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end
tex.in_text = function()
	return not vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

ls.add_snippets("tex", {
	s(
		{ trig = ";a", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\alpha"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";b", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\beta"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";c", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\chi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";d", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\delta"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";D", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Delta"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";ep", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\epsilon"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";et", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\eta"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";f", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\phi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";F", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Phi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";g", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\gamma"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";G", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Gamma"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";h", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\hbar"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";i", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\iota"),
		{ condtion = tex.in_mathzone }
	),
	s(
		{ trig = ";k", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\kappa"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";l", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\lambda"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";L", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Lambda"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";m", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\mu"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";n", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\nu"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";o", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\omega"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";O", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Omega"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";pi", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\pi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";PI", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Pi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";r", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\rho"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";s", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\sigma"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";S", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Sigma"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";ta", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\tau"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";u", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\upsilon"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";U", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\upsilon"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";th", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\theta"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";T", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Theta"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";vr", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\varrho"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";ve", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\varepsilon"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";vp", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\varphi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";x", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\xi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";X", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Xi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";ps", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\psi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";PS", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\Psi"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = ";z", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\zeta"),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "ooo", wordTrig = false, snippetType = "autosnippet" }, t("\\infty"), { condition = tex.in_mathzone }),
	s({ trig = "fall", wordTrig = false, snippetType = "autosnippet" }, t("\\forall"), { condition = tex.in_mathzone }),
	s({ trig = "AA", wordTrig = false, snippetType = "autosnippet" }, t("\\forall"), { condition = tex.in_mathzone }),
	s({ trig = "exi", wordTrig = false, snippetType = "autosnippet" }, t("\\exists"), { condition = tex.in_mathzone }),
	s({ trig = "nex", wordTrig = false, snippetType = "autosnippet" }, t("\\nexists"), { condition = tex.in_mathzone }),
	s({ trig = "neg", wordTrig = false, snippetType = "autosnippet" }, t("\\neg"), { condition = tex.in_mathzone }),
	s({ trig = "***", wordTrig = false, snippetType = "autosnippet" }, t("\\cdots"), { condition = tex.in_mathzone }),
	s({ trig = "...", wordTrig = false, snippetType = "autosnippet" }, t("\\ldots"), { condition = tex.in_mathzone }),
	s({ trig = ",.", wordTrig = false, snippetType = "autosnippet" }, t("\\cdot"), { condition = tex.in_mathzone }),
	s(
		{ trig = "xx", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		t("\\times"),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "oxo", wordTrig = false, snippetType = "autosnippet" }, t("\\otimes"), { condition = tex.in_mathzone }),
	s({ trig = "opo", wordTrig = false, snippetType = "autosnippet" }, t("\\oplus"), { condition = tex.in_mathzone }),
	s(
		{ trig = "to", wordTrig = false, snippetType = "autosnippet", priority = 10 },
		c(1, {
			t("\\longmapsto"),
			t("\\mapsto"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "rra", wordTrig = false, snippetType = "autosnippet", priority = 75 },
		c(1, {
			t("\\rightarrow"),
			t("\\longrightarrow"),
			t("\\Longrightarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lla", wordTrig = false, snippetType = "autosnippet", priority = 75 },
		c(1, {
			t("\\leftarrow"),
			t("\\longleftarrow"),
			t("\\Longleftarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "bba", wordTrig = false, snippetType = "autosnippet", priority = 75 },
		c(1, {
			t("\\leftrightarrow"),
			t("\\longleftrightarrow"),
			t("\\Longleftrightarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "then", wordTrig = false, snippetType = "autosnippet", priority = 75 },
		t("\\Longrightarrow"),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "->", snippetType = "autosnippet", priority = 25 },
		c(1, {
			t("\\rightarrow"),
			t("\\leftarrow"),
			t("\\leftrightarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "=>", snippetType = "autosnippet", priority = 25 },
		c(1, {
			t("\\Rightarrow"),
			t("\\Leftarrow"),
			t("\\Leftrightarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "-->", snippetType = "autosnippet", priority = 75 },
		c(1, {
			t("\\longrightarrow"),
			t("\\longleftarrow"),
			t("\\longleftrightarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "==>", snippetType = "autosnippet", priority = 75 },
		c(1, {
			t("\\Longrightarrow"),
			t("\\Longleftarrow"),
			t("\\Longleftrightarrow"),
		}),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "neq", wordTrig = false, snippetType = "autosnippet" }, t("\\neq"), { condition = tex.in_mathzone }),
	s({ trig = "geq", wordTrig = false, snippetType = "autosnippet" }, t("\\geq"), { condition = tex.in_mathzone }),
	s({ trig = "leq", wordTrig = false, snippetType = "autosnippet" }, t("\\leq"), { condition = tex.in_mathzone }),
	s({ trig = "app", wordTrig = false, snippetType = "autosnippet" }, t("\\approx"), { condition = tex.in_mathzone }),
	s({ trig = "iin", wordTrig = false, snippetType = "autosnippet" }, t("\\in"), { condition = tex.in_mathzone }),
	s({ trig = "nin", wordTrig = false, snippetType = "autosnippet" }, t("\\notin"), { condition = tex.in_mathzone }),
	s({ trig = "perp", wordTrig = false, snippetType = "autosnippet" }, t("\\perp"), { condition = tex.in_mathzone }),
	s({ trig = "||", wordTrig = false, snippetType = "autosnippet" }, t("\\mid"), { condition = tex.in_mathzone }),
	s({ trig = "~~", wordTrig = false, snippetType = "autosnippet" }, t("\\sim"), { condition = tex.in_mathzone }),
	s({ trig = "nn", wordTrig = false, snippetType = "autosnippet" }, t("\\cap"), { condition = tex.in_mathzone }),
	s({ trig = "NN", wordTrig = false, snippetType = "autosnippet" }, t("\\bigcap"), { condition = tex.in_mathzone }),
	s({ trig = "uu", wordTrig = false, snippetType = "autosnippet" }, t("\\cup"), { condition = tex.in_mathzone }),
	s({ trig = "UU", wordTrig = false, snippetType = "autosnippet" }, t("\\bigcup"), { condition = tex.in_mathzone }),
	s({ trig = "<<", wordTrig = false, snippetType = "autosnippet" }, t("\\ll"), { condition = tex.in_mathzone }),
	s({ trig = ">>", wordTrig = false, snippetType = "autosnippet" }, t("\\gg"), { condition = tex.in_mathzone }),
	s({ trig = "equiv", wordTrig = false, snippetType = "autosnippet" }, t("\\equiv"), { condition = tex.in_mathzone }),
	s(
		{ trig = "sq", wordTrig = false, snippetType = "autosnippet" },
		fmta([[\sqrt{<>}]], { i(1) }),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "sr", wordTrig = false, snippetType = "autosnippet" }, t("^2"), { condition = tex.in_mathzone }),
	s({ trig = "cb", wordTrig = false, snippetType = "autosnippet" }, t("^3"), { condition = tex.in_mathzone }),
	s(
		{ trig = "td", wordTrig = false, snippetType = "autosnippet" },
		fmta([[^{<>}]], { i(1) }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "__", wordTrig = false, dscr = "Subscript", snippetType = "autosnippet" },
		fmta([[_{<>}]], { i(1) }),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "cong", wordTrig = false, snippetType = "autosnippet" }, t("\\cong"), { condition = tex.in_mathzone }),
	s({ trig = "cc", wordTrig = false, dscr = "Subset " }, t("\\subset ")),
	s({ trig = "///", snippetType = "autosnippet" }, t("\\setminus"), { condition = tex.in_mathzone }),
	s({ trig = "iff", wordTrig = false, snippetType = "autosnippet" }, t("\\iff"), { condition = tex.in_mathzone }),
	s({ trig = "inv", wordTrig = false, snippetType = "autosnippet" }, t("^{-1}"), { condition = tex.in_mathzone }),
	s(
		{ trig = "conj", wordTrig = false, snippetType = "autosnippet" },
		fmta([[\overline{<>} ]], { i(1) }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "adj", wordTrig = false, snippetType = "autosnippet" },
		fmta([[{<>}^\dagger ]], { i(1) }),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "dag", wordTrig = false, snippetType = "autosnippet" }, t("^\\dagger"), { condition = tex.in_mathzone }),
	s(
		{ trig = "set", dscr = "Set definition" },
		fmta([[<> = \left\{<> \in <>\mid <>\right\}]], { i(1, "A"), i(2, "x"), i(3, "\\mathbb{R}"), i(4, "condition") })
	),
	postfix(
		{ trig = "vec", match_pattern = [[[\\%w%.%_%-%"%']+$]], dscr = "\\vec{}", snippetType = "autosnippet" },
		{ l("\\vec{" .. l.POSTFIX_MATCH .. "}") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "seq", wordTrig = false, dscr = "Sequence", snippetType = "autosnippet" },
		fmta([[(<>_{<>})_{<>\in <>}]], { i(1), i(2), rep(2), i(3) }),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "emp", dscr = "Display '\\emph{}'" }, fmta([[\emph{<>}]], { i(1) })),
	s(
		{ trig = "fam", wordTrig = false, dscr = "Family of sets", snippetType = "autosnippet" },
		fmta([[\{<>_{<>}\}_{<>\in <>}]], { i(1), i(2), rep(2), i(3) }),
		{ condition = tex.in_mathzone }
	),
	postfix({
		trig = "bar",
		match_pattern = [[[\\%w%.%_%-%"%']+$]],
		snippetType = "autosnippet",
		dscr = "Display '\\bar{}'",
	}, { l("\\bar{" .. l.POSTFIX_MATCH .. "}") }, { condition = tex.in_mathzone }),
	postfix({
		trig = "hat",
		match_pattern = [[[\\%w%.%_%-%"%']+$]],
		dscr = "Display '\\hat{}'",
		snippetType = "autosnippet",
	}, { l("\\hat{" .. l.POSTFIX_MATCH .. "}") }, { condition = tex.in_mathzone }),
	postfix({
		trig = "udl",
		match_pattern = [[[\\%w%.%_%-%"%']+$]],
		snippetType = "autosnippet",
		dscr = "Display '\\underline{}'",
	}, { l("\\underline{" .. l.POSTFIX_MATCH .. "}") }, { condition = tex.in_mathzone }),
	s({ trig = "it", wordTrig = false, dscr = "'\\textit{}' or '\\mathit{}'" }, {
		f(function()
			if tex.in_mathzone() then
				return "\\mathit{"
			else
				return "\\textit{"
			end
		end, {}),
		i(1, ""),
		t("}"),
	}),
	s({ trig = "bf", wordTrig = false, dscr = "Bold font" }, {
		f(function()
			if tex.in_mathzone() then
				return "\\mathbf{"
			else
				return "\\textbf{"
			end
		end, {}),
		i(1, ""),
		t("}"),
	}),
	postfix({
		trig = "cal",
		match_pattern = [[[\\%w%.%_%-%"%']+$]],
		dscr = "Calligraphic math font",
		snippetType = "autosnippet",
	}, { l("\\mathcal{" .. l.POSTFIX_MATCH .. "}") }, { condition = tex.in_mathzone }),
	postfix({
		trig = "frak",
		match_pattern = [[[\\%w%.%_%-%"%']+$]],
		dscr = "Euler Fraktur math font",
		snippetType = "autosnippet",
	}, { l("\\mathfrak{" .. l.POSTFIX_MATCH .. "}") }, { condition = tex.in_mathzone }),
	postfix({
		trig = "bb",
		match_pattern = [[[\\%w%.%_%-%"%']+$]],
		dscr = "Blackboard bold math font",
		snippetType = "autosnippet",
	}, { l("\\mathbb{" .. l.POSTFIX_MATCH .. "}") }, { condition = tex.in_mathzone }),
	-- s({ trig = "bb", wordTrig = false, dscr = "Blackboard bold math font" }, fmta([[\mathbb{<>}]], { i(1) })),
	s({ trig = "sf", wordTrig = false, dscr = "Sans serif math font" }, fmta([[\mathsf{<>}]], { i(1) })),
	s({ trig = "rm", wordTrig = false, dscr = "Roman math font" }, fmta([[\mathrm{<>}]], { i(1) })),
	s(
		{ trig = "()", wordTrig = false, dscr = "'\\left( \\right)'", snippetType = "autosnippet" },
		{ t("\\left("), i(1, " "), t("\\right)") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lr", wordTrig = false, dscr = "'\\left( \\right)" },
		fmta([[\left(<>\right)]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lr|", wordTrig = false, dscr = "'\\left| \\right|", snippetType = "autosnippet" },
		fmta([[\left|<>\right|]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lr{", wordTrig = false, dscr = "'\\left{ \\right}", snippetType = "autosnippet" },
		fmta([[\left\{<>\right\}]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lrB", wordTrig = false, dscr = "'\\left{ \\right}", snippetType = "autosnippet" },
		fmta([[\left\{<>\right\}]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lrb", wordTrig = false, dscr = "'\\left[ \\right]", snippetType = "autosnippet" },
		{ t("\\left["), i(1, " "), t("\\right]") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "lra", wordTrig = false, dscr = "'\\langle \\rangle'", snippetType = "autosnippet" },
		fmta([[\left\langle<>\right\rangle]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "norm", dscr = "Norm", snippetType = "autosnippet" },
		fmta([[\left\lVert <>\right\rVert]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "abs", dscr = "Absolute value", snippetType = "autosnippet" },
		fmta([[\abs{<>}]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "floor", wordTrig = false, dscr = "Floor function", snippetType = "autosnippet" },
		fmta([[\left\lfloor<>\right\rfloor]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "bk", dscr = "Braket notation" }, fmta([[\braket{<>}{<>}]], { i(1, " "), i(2, " ") }), {
		condition = tex.in_mathzone,
	}),
	s(
		{ trig = "kb", wordTrig = false, dscr = "ketbra notation" },
		fmta([[\ketbra{<>}{<>}]], { i(1, " "), i(2, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "bra", wordTrig = false, dscr = "bra notation" },
		fmta([[\bra{<>}]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "ket", wordTrig = false, dscr = "ket notation" },
		fmta([[\ket{<>}]], { i(1, " ") }),
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "sin", dscr = "Sin function", snippetType = "autosnippet" },
		{ t("\\sin") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "cos", dscr = "Cos function", snippetType = "autosnippet" },
		{ t("\\cos") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "tan", dscr = "Tan function", snippetType = "autosnippet" },
		{ t("\\tan") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "cot", dscr = "Cot function", snippetType = "autosnippet" },
		{ t("\\cot") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "sec", dscr = "Sec function", snippetType = "autosnippet" },
		{ t("\\sec") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "csc", dscr = "Csc function", snippetType = "autosnippet" },
		{ t("\\csc") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "asin", dscr = "Arcsin function", snippetType = "autosnippet" },
		{ t("\\arcsin") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "acos", dscr = "Arccos function", snippetType = "autosnippet" },
		{ t("\\arccos") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "atan", dscr = "Arctan function", snippetType = "autosnippet" },
		{ t("\\arctan") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "acot", dscr = "Arccot function", snippetType = "autosnippet" },
		{ t("\\arccot") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "asec", dscr = "Arcsec function", snippetType = "autosnippet" },
		{ t("\\arcsec") },
		{ condition = tex.in_mathzone }
	),
	s(
		{ trig = "acsc", dscr = "Arccsc function", snippetType = "autosnippet" },
		{ t("\\arccsc") },
		{ condition = tex.in_mathzone }
	),
})
