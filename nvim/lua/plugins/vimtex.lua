vim.g.maplocalleader = " "
vim.g.vimtex_quickfix_ignore_filters = {
	'Underfull \\hbox',
	'Overfull \\hbox',
	'LaTex Warning; .\\+float specifier changed to',
	'Package siunitx Warning: Detected the "physics" package',
}
vim.g.vimtex_view_method = 'zathura_simple'
vim.g.vimtex_compiler_latexmk = {
	options = {
		'-verbose',
		'-file-line-error',
		'-synctex=1',
		'-interaction=nostopmode',
		'-shell-escape',
	},
}
vim.g.vimtex_syntax_conceal = {
	accents = 1,
	ligatures = 1,
	cites = 1,
	fancy = 1,
	spacing = 1,
	greek = 1,
	math_bounds = 1,
	math_delimiters = 1,
	math_fracs = 1,
	math_super_sub = 1,
	math_symbols = 1,
	sections = 1,
	styles = 1,
}
vim.g.vimtex_syntax_custom_cmds = {
	{ name = "vec", mathmode = 1, conceal = 1, argstyle = "bold" },
	{ name = "dd", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "d" },
	{ name = "longrightarrow", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "⟶" },
	{ name = "longleftarrow", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "⟵" },
	{ name = "longleftrightarrow", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "⟷" },
	{ name = "Longrightarrow", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "⇒" },
	{ name = "Longleftarrow", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "⇐" },
	{ name = "Longleftrightarrow", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "⇔" },
	{ name = "longmapsto", mathmode = 1, conceal = 1, argstyle = "bold", concealchar = "↦" },
}
vim.g.vimtex_syntax_custom_cmds_with_concealed_delims = {
	{ name = "ket", mathmode = 1, cchar_open = "|", cchar_close = "⟩" },
	{ name = "bra", mathmode = 1, cchar_open = "⟨", cchar_close = "|" },
	{ name = "braket", mathmode = 1, nargs = 2, cchar_open = "⟨", cchar_mid = "|", cchar_close = "⟩" },
	{ name = "ketbra", mathmode = 1, nargs = 2, cchar_open = "|", cchar_mid = "X", cchar_close = "|" },
	{ name = "frac", mathmode = 1, nargs = 2, cchar_open = " ", cchar_mid = "/", cchar_close = " " },
	{ name = "dfrac", mathmode = 1, nargs = 2, cchar_open = " ", cchar_mid = "/", cchar_close = " " },
}
