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
	s({ trig = "env", dscr = "Begin environment" },
		fmta(
			[[
        \begin{<>}
           <>
        \end{<>}
      ]],
			{
				i(1),
				i(2),
				rep(1),
			}
		)
	),
	s({ trig = "item", dscr = "Itemize environment" },
		fmta(
			[[
        \begin{itemize}
           \item <>
           \item <>
           \item <>
        \end{itemize}
      ]],
			{
				i(1),
				i(2),
				i(3),
			}
		)),
	s({ trig = "itm", dscr = "Add item" }, t("\\item ")),
	s({ trig = "enum", dscr = "Enumerate environment" },
		fmta(
			[[
        \begin{enumerate}
           \item <>
           \item <>
           \item <>
        \end{enumerate}
      ]],
			{
				i(1),
				i(2),
				i(3),
			}
		)),
	s({ trig = "cent", dscr = "Center environment" },
		fmta(
			[[
        \begin{center}
           <>
        \end{center}
      ]],
			{
				i(1)
			}
		)),
	s({ trig = "fig", dscr = "Figure environment" },
		fmta(
			[[
        \begin{figure}[<>]
          \centering
          \includegraphics[width=<> \linewidth]{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
      ]],
			{
				i(1, 'htpb'),
				i(2, '0.8'),
				i(3, 'name'),
				i(4, 'caption'),
				i(5, 'label')
			}
		)),
	s({ trig = "sec", dscr = "Display '\\section{}'" },
		fmta([[\section{<>}]], i(1))),
	s({ trig = "ssec", dscr = "Display '\\subsection{}'" },
		fmta([[\subsection{<>}]], i(1))),
	s({ trig = "sssec", dscr = "Display '\\subsubsection{}'" },
		fmta([[\subsubsection{<>}]], i(1))),
	s({ trig = "sec*", dscr = "Display '\\section**{}'" },
		fmta([[\section*{<>}]], i(1))),
	s({ trig = "ssec*", dscr = "Display '\\subsection**{}'" },
		fmta([[\subsection*{<>}]], i(1))),
	s({ trig = "sssec*", dscr = "Display '\\subsubsection**{}'" },
		fmta([[\subsubsection*{<>}]], i(1))),
	s({ trig = "part", dscr = "Display '\\part{}'" },
		fmta([[\part{<>}]], i(1))),
	s({ trig = "chap", dscr = "Display '\\chapter{}'" },
		fmta([[\chapter{<>}]], i(1))),
})
