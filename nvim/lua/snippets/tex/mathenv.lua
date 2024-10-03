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
	s({ trig = "ali", dscr = "Indexed align environment" },
		fmta([[
        \begin{align}
           <>
        \end{align}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "ali*", dscr = "Non-indexed align environment" },
		fmta([[
        \begin{align*}
           <>
        \end{align*}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "fal", dscr = "Indexed flalign environment" },
		fmta([[
        \begin{flalign}
           <>
        \end{flalign}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "fal*", dscr = "Non-indexed flalign environment" },
		fmta([[
        \begin{flalign*}
           <>
        \end{flalign*}
      ]],
			{ i(1) }
		)
	),

	s({ trig = "eq", dscr = "Indexed equation environment" },
		fmta([[
        \begin{equation}
           <>
        \end{equation}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "eq*", dscr = "Non-indexed equation environment" },
		fmta([[
        \begin{equation*}
           <>
        \end{equation*}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "pmat", dscr = "Matrix (...)" },
		fmta([[
        \begin{pmatrix}
           <>
        \end{pmatrix}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "bmat", dscr = "Matrix [...]" },
		fmta([[
        \begin{bmatrix}
           <>
        \end{bmatrix}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "Bmat", dscr = "Matrix {...}" },
		fmta([[
        \begin{Bmatrix}
           <>
        \end{Bmatrix}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "det", dscr = "Determinant matrix" },
		fmta([[
        \begin{vmatrix}
           <>
        \end{vmatrix}
      ]],
			{ i(1) }
		)
	),
	s({ trig = "dm", dscr = "Display math" },
		fmta(
			[[
        \[ <> \]
      ]],
			{
				i(1)
			}
		)
	),
	s({ trig = "im", dscr = "Inline math" },
		fmta(
			[[
        $<>$
      ]],
			{
				i(1)
			}
		)),

	s({ trig = "lim", dscr = "Limit" },
		fmta(
			[[
        \lim_{<> \to <>}
      ]],
			{
				i(1, 'n'), i(2, '\\infty')
			}
		)
	),
	s({ trig = "limsup", dscr = "Limit sup" },
		fmta(
			[[
        \limsup_{<> \to <>}
      ]],
			{
				i(1, 'n'), i(2, '\\infty')
			}
		)
	),
	s({ trig = "sum", dscr = "Sum" },
		fmta(
			[[
        \sum_{<>}^{<>}
      ]],
			{
				i(1, 'n=0'), i(2, '\\infty')
			}
		)
	),
	s({ trig = "prod", dscr = "Product" },
		fmta(
			[[
        \prod_{<>}^{<>}
      ]],
			{
				i(1, 'n=0'), i(2, '\\infty')
			}
		)
	),
	s({ trig = "dint", dscr = "Definite integral", snippetType = "autosnippet" },
		fmta(
			[[
        \int_{<>}^{<>}<> d<>
      ]],
			{
				i(1, '0'), i(2, '\\infty'), i(3, 'content'), i(4, 'x')
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "tex", dscr = "Text environment", snippetType = "autosnippet" },
		fmta(
			[[
        \text{<>}
      ]],
			{
				i(1)
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "dx", dscr = "Firt order Derivative", snippetType = "autosnippet" },
		fmta(
			[[
        \frac{d <> }{d <>}
      ]],
			{
				i(1), i(2, 'x')
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "ddx", dscr = "Second order Derivative", snippetType = "autosnippet" },
		fmta(
			[[
        \frac{d^2 <>}{d{<>}^2}
      ]],
			{
				i(1), i(2, 'x')
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "dnx", dscr = "n-order Derivative", snippetType = "autosnippet" },
		fmta(
			[[
        \frac{d^{<>} <>}{d{<>}^{<>}}
      ]],
			{
				i(1, 'n'), i(2), i(3, 'x'), rep(1, 'n')
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "pdx", dscr = "Partial Derivative", snippetType = "autosnippet" },
		fmta(
			[[
        \frac{\partial <>}{\partial <>}
      ]],
			{
				i(1), i(2, 'x')
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "ppdx", dscr = "Second order partial Derivative", snippetType = "autosnippet" },
		fmta(
			[[
        \frac{\partial^2 <>}{\partial <> \partial <>}
      ]],
			{
				i(1), i(2, 'x'), i(3, 'y')
			}
		),
		{
			condition = function() -- math context detection
				return vim.fn['vimtex#syntax#in_mathzone']() == 1
			end
		}
	),
	s({ trig = "bigfun", dscr = "Function with conditions" },
		fmta([[
  <>=\begin{cases}
  <> & \text{, if }<>,\\
  <> & \text{, if }<>
  \end{cases}
  ]],
			{
				i(1, 'f(x)'), i(2), i(3), i(4), i(5)
			})),
	s({ trig = "ff", dscr = "Display '\\frac{}{}}'" },
		fmta([[\frac{<>}{<>}]],
			{ i(1), i(2) }
		)),

})
