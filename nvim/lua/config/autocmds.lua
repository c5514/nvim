-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[
augroup ConcealHighlight
  autocmd!
  autocmd FileType tex highlight Conceal guifg=#d3d3d3 guibg=none
augroup END
]])
vim.cmd([[
	augroup TexMardownSpell 
	autocmd!
	autocmd FileType tex,latex,mardown setlocal spell spelllang=es,en
	augroup END
]])
vim.cmd([[
	augroup YankHighlight
	autocmd!
	autocmd TextYankPost * lua vim.highlight.on_yank{timeout=500}
	augroup END
]])

