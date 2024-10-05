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
ls.add_snippets('python',{
  s({trig="imp", dscr="Import a Python library"},
    fmta(       [[
        import <> as <>
      ]],
      { i(1), i(2) }
    )
  ),
	s({trig="np", dscr="Import numpy"},
    t("import numpy as np")
  ),
	s({trig="plt", dscr="Import matplotlib"},
    t("import matplotlib.pyplot as plt")
  ),
	s({trig="pd", dscr="Import pandas"},
    t("import pandas as pd")
  ),
})
