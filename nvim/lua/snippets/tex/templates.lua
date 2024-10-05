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
  s({trig="lnotes", dscr="Lecture Notes Template"},
    fmta(       [[
        \documentclass{article}
        \usepackage{babel}
        \usepackage{derivative}
        \usepackage{natbib}
        \bibliographystyle{unsrtnat}
        \usepackage{tabularx}
        \usepackage{amsmath}
        \usepackage{amssymb}
        \usepackage{enumitem}
        \usepackage{amsfonts}
        \usepackage{physics}
        \usepackage{dsfont}
        \usepackage{tikz}
        %\usetikzlibrary{quantikz2}%for quantum circuits
        \usepackage{circuitikz}%for logic gates
        \usepackage{caption}
        \usepackage{graphicx}
        \usepackage[left=20mm, right=20mm, top=20mm, bottom=20mm]{geometry}
        \usepackage{cite}
        \usepackage{mathrsfs}
        \usepackage[most,many,breakable]{tcolorbox}
        \renewcommand{\theequation}{\thesection.\arabic{equation}}
        \makeatletter
        \let\old@section\section
        \def\section{\setcounter{equation}{0}\old@section}
        \makeatother
        \renewcommand{\tablename}{\textbf{Tabla}}
        \renewcommand{\listfigurename}{\textbf{Figura}}
        \usepackage[final]{hyperref}
        \hypersetup{
	        colorlinks=true,
	        linkcolor=blue,       
	        citecolor=blue,  
	        filecolor=magenta,     
	        urlcolor=blue         
        }
        \usepackage{titleps,kantlipsum}
        \newpagestyle{mypage}{%
        \headrule
        \sethead{\MakeUppercase{\thesection\quad \sectiontitle}}{}{\thesubsection\quad \subsectiontitle}
        \setfoot{}{}{\thepage}
        }
        \settitlemarks{section,subsection}
        \pagestyle{mypage}
        \input{~/Documents/Vim/Tex/Newcomm/theorem.tex}



        \title{<>}
        \author{<>}
        \date{\today}

        \begin{document}
        \maketitle\newpage
        \setcounter {page} {1}
        \tableofcontents
        \part{<>}
        \section{<>}
        <>
        \end{document} 
      ]],
      { i(1) ,i(2), i(3), i(4), i(0)}
    )
  ),

})

