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
  s('var', c(1, {
    fmt('local {} = {}', {
      i(1, 'name'),
      i(2, '"value"')
    }),
    fmt('{} = {}',{
      i(1, 'name'),
      i(2, '"value"')
    })
  })
),
  s('ii', f(function()
  return os.date('%Y-%m-%d')
  end)),
})

