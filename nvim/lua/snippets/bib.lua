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
ls.add_snippets('bib',{
  s({trig="book", dscr="Add book citation"},
    fmta(
    [[
	@book{<>,
  		author = {<>},
		year = {<>},
		title = {<>},
		publisher = {<>},
		edition = {<>}
	}
    ]],
      {
        i(1),
        i(2),
        i(3),
		i(4),
		i(5),
		i(6)
      })
  ),
  s({trig="art", dscr="Add article citation"},
    fmta(
    [[
	@article{<>,
  		author = {<>},
		year = {<>},
		title = {<>},
		journal = {<>},
		volume = {<>},
		number = {<>},
		pages = {<>},
		publisher = {<>}
	}
    ]],
      {
        i(1),
        i(2),
        i(3),
		i(4),
		i(5),
		i(6),
		i(7),
		i(8),
		i(9)
      })
  ),
})
