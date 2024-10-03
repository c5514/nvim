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
ls.add_snippets('tex', {
	s({ trig = "alp", snippetType = "autosnippet", priority = 10 },
		t("\\alpha "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "bet", snippetType = "autosnippet", priority = 10 },
		t("\\beta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "chi", snippetType = "autosnippet", priority = 10 },
		t("\\chi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "del", snippetType = "autosnippet", priority = 10 },
		t("\\delta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Del", snippetType = "autosnippet", priority = 10 },
		t("\\Delta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),

	s({ trig = "eps", snippetType = "autosnippet", priority = 10 },
		t("\\epsilon "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "eta", snippetType = "autosnippet", priority = 10 },
		t("\\eta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "phi", snippetType = "autosnippet", priority = 10 },
		t("\\phi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Phi", snippetType = "autosnippet", priority = 10 },
		t("\\Phi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),

	s({ trig = "gam", snippetType = "autosnippet", priority = 10 },
		t("\\gamma "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Gam", snippetType = "autosnippet", priority = 10 },
		t("\\Gamma "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "iot", snippetType = "autosnippet", priority = 10 },
		t("\\iota "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "kap", snippetType = "autosnippet", priority = 10 },
		t("\\kappa "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "lam", snippetType = "autosnippet", priority = 10 },
		t("\\lambda "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Lam", snippetType = "autosnippet", priority = 10 },
		t("\\lambda "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "mu", snippetType = "autosnippet", priority = 10 },
		t("\\mu "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "nu", snippetType = "autosnippet", priority = 10 },
		t("\\nu "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "ome", snippetType = "autosnippet", priority = 10 },
		t("\\omega "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Ome", snippetType = "autosnippet", priority = 10 },
		t("\\Omega "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "pi", snippetType = "autosnippet", priority = 10 },
		t("\\pi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Pi", snippetType = "autosnippet", priority = 10 },
		t("\\Pi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "rho", snippetType = "autosnippet", priority = 10 },
		t("\\rho "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "sig", snippetType = "autosnippet", priority = 10 },
		t("\\sigma "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Sig", snippetType = "autosnippet", priority = 10 },
		t("\\Sigma "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "tau", snippetType = "autosnippet", priority = 10 },
		t("\\tau "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "ups", snippetType = "autosnippet", priority = 10 },
		t("\\upsilon "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Ups", snippetType = "autosnippet", priority = 10 },
		t("\\upsilon "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "the", snippetType = "autosnippet", priority = 10 },
		t("\\theta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "The", snippetType = "autosnippet", priority = 10 },
		t("\\Theta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "vrh", snippetType = "autosnippet", priority = 10 },
		t("\\varrho "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "vep", snippetType = "autosnippet", priority = 10 },
		t("\\varepsilon "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "vph", snippetType = "autosnippet", priority = 10 },
		t("\\varphi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "xi", snippetType = "autosnippet", priority = 10 },
		t("\\xi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Xi", snippetType = "autosnippet", priority = 10 },
		t("\\Xi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "psi", snippetType = "autosnippet", priority = 10 },
		t("\\psi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "Psi", snippetType = "autosnippet", priority = 10 },
		t("\\Psi "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "zet", snippetType = "autosnippet", priority = 10 },
		t("\\zeta "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "ooo", snippetType = "autosnippet" },
		t("\\infty "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "fall", snippetType = "autosnippet" },
		t("\\forall "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "exi", snippetType = "autosnippet" },
		t("\\exists "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "nexi", snippetType = "autosnippet" },
		t("\\nexists "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "neg", snippetType = "autosnippet" },
		t("\\neg "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "***", snippetType = "autosnippet" },
		t("\\cdots "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "...", snippetType = "autosnippet" },
		t("\\ldots "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = " . ", snippetType = "autosnippet" },
		t("\\cdot "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "xx", snippetType = "autosnippet" },
		t("\\times "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "oxo", snippetType = "autosnippet" },
		t("\\otimes "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "opo", snippetType = "autosnippet" },
		t("\\oplus "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "->", snippetType = "autosnippet", priority = 10 },
		t("\\rightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "-<", snippetType = "autosnippet", priority = 10 },
		t("\\leftarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "b->", snippetType = "autosnippet", priority = 50 },
		t("\\leftrightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "=>", snippetType = "autosnippet", priority = 10 },
		t("\\Rightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "=<", snippetType = "autosnippet", priority = 10 },
		t("\\Leftarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "b=>", snippetType = "autosnippet", priority = 50 },
		t("\\Leftrightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),

	--- Long arrow are not working. Maybe adding priorities will solve the problem
	s({ trig = "-->", snippetType = "autosnippet", priority = 75 },
		t("\\longrightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "--<", snippetType = "autosnippet", priority = 75 },
		t("\\longleftarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "==<", snippetType = "autosnippet", priority = 75 },
		t("\\Longrightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "==>", snippetType = "autosnippet", priority = 75 },
		t("\\Longleftarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "b-->", snippetType = "autosnippet", priority = 100 },
		t("\\Longleftrightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "b==>", snippetType = "autosnippet", priority = 100 },
		t("\\longleftrightarrow "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "neq", snippetType = "autosnippet" },
		t("\\neq "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "geq", snippetType = "autosnippet" },
		t("\\geq "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "leq", snippetType = "autosnippet" },
		t("\\leq "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "appr", snippetType = "autosnippet" },
		t("\\approx "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "iin", snippetType = "autosnippet" },
		t("\\in "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "nin", snippetType = "autosnippet" },
		t("\\notin "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "perp", snippetType = "autosnippet" },
		t("\\perp "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "||", snippetType = "autosnippet" },
		t("\\mid "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "~~", snippetType = "autosnippet" },
		t("\\sim "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "nn", snippetType = "autosnippet" },
		t("\\cap "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "NN", snippetType = "autosnippet" },
		t("\\bigcap "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "uu", snippetType = "autosnippet" },
		t("\\cup "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "UU", snippetType = "autosnippet" },
		t("\\bigcup "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "<<", snippetType = "autosnippet" },
		t("\\ll "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = ">>", snippetType = "autosnippet" },
		t("\\gg "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "equiv", snippetType = "autosnippet" },
		t("\\equiv "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "sq", snippetType = "autosnippet" },
		fmta([[\sqrt{<>}]],
			{ i(1) }
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "sr", snippetType = "autosnippet" },
		t("^2"),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "cb", snippetType = "autosnippet" },
		t("^3"),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "td", snippetType = "autosnippet" },
		fmta([[^{<>}]],
			{ i(1) }
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "__", dscr = "Subscript",snippetType = "autosnippet"},
		fmta([[_{<>}]],{i(1)}),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "cong", snippetType = "autosnippet" },
		t("\\cong "),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "cc",dscr = "Subset "},t("\\subset ")),
	s({ trig = "///", snippetType = "autosnippet" },
		t("\\setminus"),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "iff", snippetType = "autosnippet" },
		t("\\iff"),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "inv", snippetType = "autosnippet" },
		t("^{-1}"),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "conj", snippetType = "autosnippet" },
		fmta([[\overline{<>} ]],{ i(1)}),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "set", dscr = "Set definition" },
		fmta([[
        <> = \left\{<> \in <>\mid <>\right\}
      ]],
			{ i(1, 'A'), i(2, 'x'), i(3, '\\mathbb{R}'), i(4, 'condition') }
		)
	),
	s({ trig = "vec", dscr = "\\vec{}" },
		fmta([[\vec{<>}]],{ i(1)})
	),
	s({ trig = "em", dscr = "Display '\\emph{}'" },
		fmta(
			[[\emph{<>}]],
			{ i(1) }
		)),
	s({ trig = "ovl", dscr = "Display '\\underline{}'" },
		fmta(
			[[\overline{<>}]],
			{ i(1) }
		)),
	s({ trig = "unl", dscr = "Display '\\underline{}'" },
		fmta(
			[[\underline{<>}]],
			{ i(1) }
		)),
	s({ trig = "it", dscr = "'\\textit{}' or '\\mathit{}'" }, {
		f(function()
			if vim.fn['vimtex#syntax#in_mathzone']() == 1 then
				return "\\mathit{"
			else
				return "\\textit{"
			end
		end, {}),
		i(1, ""), t("}")
	}),
	s({ trig = "bf", dscr = "'\\mathbf{}' or '\\textbf{}'" }, {
		f(function()
			if vim.fn['vimtex#syntax#in_mathzone']() == 1 then
				return "\\mathbf{"
			else
				return "\\textbf{"
			end
		end, {}),
		i(1, ""), t("}")
	}),
	s({ trig = "cal", dscr = "'\\mathcal'" },
		fmta([[\mathcal{<>}]],
			{ i(1) }
		)),
	s({ trig = "frak", dscr = "'\\mathfrak'" },
		fmta([[\mathfrak{<>}]],
			{ i(1) }
		)),
	s({ trig = "bb", dscr = "'\\mathbb'" },
		fmta([[\mathbb{<>}]],
			{ i(1) }
		)),
	s({ trig = "sf", dscr = "'\\mathsf'" },
		fmta([[\mathsf{<>}]],
			{ i(1) }
		)),
	s({ trig = "()", dscr = "'\\left( \\right)",snippetType = "autosnippet" },
		fmta([[\left(<>\right)]],
			{ i(1) }
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "lr", dscr = "'\\left( \\right)" },
		fmta([[\left(<>\right)]],
			{ i(1) }
		)),
	s({ trig = "lr|", dscr = "'\\left| \\right|" },
		fmta([[\left|<>\right|]],
			{ i(1) }
		)),
	s({ trig = "lr{", dscr = "'\\left{ \\right}" },
		fmta([[\left\{ <> \right\}]],
			{ i(1) }
		)),
	s({ trig = "lrb", dscr = "'\\left{ \\right}" },
		fmta([[\left\{ <> \right\}]],
			{ i(1) }
		)),
	s({ trig = "lra", dscr = "'leftangle rightangle)" },
		fmta([[\left\langle<>\right\rangle]],
			{ i(1) }
		)),
})
