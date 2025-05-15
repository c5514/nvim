local ls = require("luasnip")
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
-- local f = ls.function_node
local rep = require("luasnip.extras").rep
local tex = {}
tex.in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex.in_text = function()
  return not vim.fn['vimtex#syntax#in_mathzone']() == 1
end
local line_begin = require("luasnip.extras.expand_conditions").line_begin

ls.add_snippets('tex', {
  s({ trig = "ali", dscr = "Indexed align environment" },
    fmta([[
        \begin{align}
           <>
        \end{align}
      ]],
      { i(1) }
    ), { condition = line_begin }
  ),
  s({ trig = "ali*", dscr = "Non-indexed align environment" },
    fmta([[
        \begin{align*}
           <>
        \end{align*}
      ]],
      { i(1) }
    ), { condition = line_begin }
  ),
  s({ trig = "fal", dscr = "Indexed flalign environment" },
    fmta([[
        \begin{flalign}
           <>
        \end{flalign}
      ]],
      { i(1) }
    ), { condition = line_begin }
  ),
  s({ trig = "fal*", dscr = "Non-indexed flalign environment" },
    fmta([[
        \begin{flalign*}
           <>
        \end{flalign*}
      ]],
      { i(1) }
    ), { condition = line_begin }
  ),

  s({ trig = "eq", dscr = "Indexed equation environment" },
    fmta([[
        \begin{equation}
           <>
        \end{equation}
      ]],
      { i(1) }
    ), { condition = line_begin }
  ),
  s({ trig = "eq*", dscr = "Non-indexed equation environment" },
    fmta([[
        \begin{equation*}
           <>
        \end{equation*}
      ]],
      { i(1) }
    ), { condition = line_begin }
  ),
  s({ trig = "pmat", dscr = "Matrix (...)" },
    fmta([[
        \begin{pmatrix}
           <>
        \end{pmatrix}
      ]],
      { i(1) }
    ), { condition = tex.in_mathzone }
  ),
  s({ trig = "bmat", dscr = "Matrix [...]" },
    fmta([[
        \begin{bmatrix}
           <>
        \end{bmatrix}
      ]],
      { i(1) }
    ), { condition = tex.in_mathzone }
  ),
  s({ trig = "Bmat", dscr = "Matrix {...}" },
    fmta([[
        \begin{Bmatrix}
           <>
        \end{Bmatrix}
      ]],
      { i(1) }
    ), { condition = tex.in_mathzone }
  ),
  s({ trig = "det", dscr = "Determinant matrix" },
    fmta([[
        \begin{vmatrix}
           <>
        \end{vmatrix}
      ]],
      { i(1) }
    ), { condition = tex.in_mathzone }
  ),
  s({ trig = "ts", wordTrig = false, dscr = "Tensor" },
    fmta([[\tensor{<>}{<>}]],
      { i(1), i(2) }
    ), { condition = tex.in_mathzone }
  ),
  s({ trig = "dm", wordTrig = false, dscr = "Display math" },
    fmta(
      [[
				\[
					<>
				\]
      		]], { i(1) }), { condition = tex.in_text }
  ),
  s({ trig = "im", wordTrig = false, dscr = "Inline math" },
    fmta([[$<>$]], { i(1) }), { condition = tex.in_text }),
  -- s({ trig = "$", snippetType = "autosnippet" }, fmta([[$<>$]], { i(1) }), { condition = tex.in_mathzone }),

  s({ trig = "lim", dscr = "Limits" },
    c(1, {
      fmta([[
				\lim_{<> \to <>}
			]], { i(1, 'n'), i(2, '\\infty') }),
      fmta([[
				\limsup_{<>\to <>}
			]], { i(1, 'n'), i(2, '\\infty') }),
      fmta([[
				\liminf_{<>\to <>}
			]], { i(1, 'n'), i(2, '\\infty') })
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "sum", dscr = "Sum of elements" },
    c(1, {
      fmta(
        [[
				\sum_{<>}^{<>}
			]],
        { i(1, 'n=0'), i(2, '\\infty') }
      ),
      fmta(
        [[
					\sum_{<>\in <>}
				]],
        { i(1, 'i'), i(2, 'I') }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "prod", dscr = "Product of elements" },
    c(1, {
      fmta(
        [[
        		\prod_{<>}^{<>}
      			]],
        { i(1, 'n=0'), i(2, '\\infty') }
      ),
      fmta(
        [[
				\prod_{<>\in<>}
				]],
        { i(1, 'i'), i(2, 'I') }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "cup", dscr = "Union of family of sets", wordTrig = false, snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
        		\bigcup_{<>=0}^{<>}<>_{<>}
    			]],
        { i(1), i(2, '\\infty'), i(3, 'A'), rep(1) }
      ),
      fmta(
        [[
				\bigcup_{<>\in <>}<>_{<>}
				]],
        { i(1), i(2), i(3, 'A'), rep(1) }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "cap", dscr = "Intersection of family of sets", wordTrig = false, snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
        		\bigcap_{<>=0}^{<>}<>_{<>}
    			]],
        { i(1), i(2, '\\infty'), i(3, 'A'), rep(1) }
      ),
      fmta(
        [[
				\bigcap_{<>\in <>}<>_{<>}
				]],
        { i(1), i(2), i(3, 'A'), rep(1) }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "int", dscr = "Indefinite integral", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
        		\int <> \dd <>
    			]],
        { i(1), i(2) }
      ),
      fmta(
        [[
				\iint <> \dd <>
				]],
        { i(1), i(2) }
      ),
      fmta(
        [[
				\iiint <> \dd <>
				]],
        { i(1), i(2) }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "dint", dscr = "Definite integral", snippetType = "autosnippet" },
    fmta(
      [[
        \int_{<>}^{<>}<> \dd <>
      ]],
      {
        i(1, '0'), i(2, '\\infty'), i(3, 'content'), i(4, 'x')
      }
    ), { condition = tex.in_mathzone }
  ),
  s({ trig = "ont", dscr = "Integral", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
        		\oint <> \dd <>
    			]],
        { i(1), i(2) }
      ),
      fmta(
        [[
				\oiint <> \dd <>
				]],
        { i(1), i(2) }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "tex", wordTrig = false, dscr = "Text environment", snippetType = "autosnippet" },
    fmta([[\text{<>}]], { i(1) }), { condition = tex.in_mathzone }
  ),
  s({ trig = "dev", wordTrig = false, dscr = "Derivative", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
    			\frac{\dd <>}{\dd <>}
    			]],
        { i(1), i(2, 'x') }
      ),
      fmta(
        [[
				\frac{\dd^2 <>}{\dd <>^2}
				]],
        { i(1), i(2, 'x') }
      ),
      fmta(
        [[
				\frac{\dd^n <>}{\dd <>^n}
				]],
        { i(1), i(2, 'x') }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "pde", wordTrig = false, dscr = "Partial Derivative", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
        		\frac{\partial <>}{\partial <>}
    			]],
        { i(1), i(2, 'x') }
      ),
      fmta(
        [[
        		\frac{\partial^2 <>}{\partial <>^2}
    			]],
        { i(1), i(2, 'x') }
      ),
      fmta(
        [[
        		\frac{\partial^n <>}{\partial <>^n}
    			]],
        { i(1), i(2, 'x') }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "pdd", wordTrig = false, dscr = "Partial Derivative", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
        		\frac{\partial^2 <>}{\partial <> \partial <>}
    			]],
        { i(1), i(2, 'x'), i(3, 'y') }
      ),
      fmta(
        [[
        		\frac{\partial^3 <>}{\partial <> \partial <> \partial <>}
    			]],
        { i(1), i(2, 'x'), i(3, 'y'), i(4, 'z') }
      )
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "dif", wordTrig = false, dscr = "Differential forms", snippetType = "autosnippet" },
    c(1, {
      fmta([[\dd <>]], { i(1, 'x') }),
      fmta([[\dd <> \wedge\dd <>]], { i(1, 'x'), i(2, 'y') }),
      fmta([[\dd <> \wedge\dd <>\wedge <>]], { i(1, 'x'), i(2, 'y'), i(3, 'z') }),
      fmta([[
			\dd <>_1\wedge\dd <>_2\dots\wedge\dd <>_<>
			]], { i(1, 'x'), rep(1), rep(1), i(2, 'k') })
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "tup", wordTrig = false, dscr = "Tuples", snippetType = "autosnippet" },
    c(1, {
      fmta([[(<>,<>)]], { i(1, 'x'), i(2, 'y') }),
      fmta([[(<>,<>,<>)]], { i(1, 'x'), i(2, 'y'), i(3, 'z') }),
      fmta([[(<>_1, <>_2,\dots,<>_<>)]], { i(1, 'x'), rep(1), rep(1), i(2, 'k') })
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "rep", wordTrig = false, dscr = "Repeated elements", snippetType = "autosnippet" },
    c(1, {
      fmta([[
			\underbrace{<>\wedge <>\dots\wedge <>}_{\text{$<>$ times}}
			]], { i(1, 'V'), rep(1), rep(1), i(2, 'k') }),
      fmta([[
			\underbrace{<>\times <>\dots\times <>}_{\text{$<>$ times}}
			]], { i(1, 'V'), rep(1), rep(1), i(2, 'k') }),
      fmta([[
			\underbrace{<>\otimes <>\dots\otimes <>}_{\text{$<>$ times}}
			]], { i(1, 'V'), rep(1), rep(1), i(2, 'k') })
    }), { condition = tex.in_mathzone }
  ),
  s({ trig = "fun", dscr = "Function" },
    c(1, {
      fmta([[
			<> \colon <>\to <>
			]],
        { i(1, 'f'), i(2, '\\mathbb{R}'), i(3, '\\mathbb{R}') }),
      fmta([[
				<>= \begin{cases}
					<> & \text{, if }<>,\\
					<> & \text{, if }<>
					\end{cases}
			]],
        { i(1, 'f(x)'), i(2), i(3), i(4), i(5) }) })
  ),
  s({ trig = "ff", wordTrig = false, dscr = "Display '\\frac{}{}}'" },
    c(1, {
      fmta([[\frac{<>}{<>}]], { i(1), i(2) }),
      fmta([[\left(\frac{<>}{<>}\right)]], { i(1), i(2) })
    })),
  s({ trig = "exp", wordTrig = false, dscr = "Display 'e^{}'" },
    c(1, {
      fmta([[e^{<>}]], { i(1) }),
      fmta([[e^{\left(\frac{<>}{<>}\right)}]], { i(1), i(2) })
    })),
  s({ trig = "case", dscr = "Begin cases env" },
    fmta([[
			\begin{cases}
				<>
			\end{cases}]],
      { i(1) }
    )
  ),
})
