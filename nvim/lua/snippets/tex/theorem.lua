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
ls.add_snippets('tex',{
    s({trig="thm", dscr="Theorem environment"},
    fmta(
      [[
        \begin{theorem}[<>]
           <>
        \end{theorem}
      ]],
      {
        i(1, 'Name'),
        i(2),
      }
    )
  ),
  s({trig="thmb", dscr="Theorem box"},
    fmta(
      [[
        \begin{Theorem}{<>}{thm:<>}
           <>
        \end{Theorem}
      ]],
      {
        i(1, 'Name'),
        i(2, 'Label'),
        i(3, 'Content')
      }
    )
  ),
  s({trig="def", dscr="Definition environment"},
    fmta(
      [[
        \begin{definition}[<>]
           <>
        \end{definition}
      ]],
      {
        i(1, 'Name'),
        i(2),
      }
    )
  ),
  s({trig="defb", dscr="Definition box"},
    fmta(
      [[
        \begin{Definition}{<>}{def:<>}
           <>
        \end{Definition}
      ]],
      {
        i(1, 'Name'),
        i(2, 'Label'),
        i(3, 'Content')
      }
    )
  ),
  s({trig="prf", dscr="Proof environment"},
    fmta(
      [[
        \begin{proof}
           <>
        \end{proof}
      ]],
      {
        i(1, 'Content')
      }
    )
  ),
  s({trig="prfb", dscr="Proof box"},
    fmta(
      [[
        \begin{Proof}{<>}{}
           <>
        \end{Proof}
      ]],
      {
        i(1, 'Name'),
        i(2, 'Content'),
      }
    )
  ),
  s({trig="corl", dscr="Corollary environment"},
    fmta(
      [[
        \begin{corollary}
           <>
        \end{corollary}
      ]],
      {
        i(1, 'Content')
      }
    )
  ),
  s({trig="lemm", dscr="Lemma environment"},
    fmta(
      [[
        \begin{lemma}
           <>
        \end{lemma}
      ]],
      {
        i(1, 'Content')
      }
    )
  ),

})

