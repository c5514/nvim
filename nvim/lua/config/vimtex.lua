vim.g.vimtex_quickfix_ignore_filters = {
	'Underfull \\hbox',
	'Overfull \\hbox',
	'LaTex Warning; .\\+float specifier changed to',
	'Package siunitx Warning: Detected the "physics" package',
}
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_latexmk = {
	options = {
		'-verbose',
		'-file-line-error',
		'-synctex=1',
		'-interaction=nostopmode',
		'-shell-escape',
	},
}
vim.o.conceallevel = 2
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
if not vim.g.vim_window_id then
  vim.g.vim_window_id = vim.fn.system("xdotool getactivewindow")
end
local function TexFocusVim()
  vim.fn.system("sleep 0.2")
  vim.fn.system("xdotool windowfocus " .. vim.g.vim_window_id)
  vim.cmd("redraw!")
end

vim.api.nvim_exec([[
augroup vimtex_event_focus
  autocmd!
  autocmd User VimTexEventView lua TexFocusVim()
augroup END
]], false)
