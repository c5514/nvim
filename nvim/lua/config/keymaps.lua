local options = { noremap = true, silent = true }
local map = vim.keymap.set
map("n", ";", ":")
map("n", "<leader>n", "<Cmd>Neotree toggle<CR>")
map("n", "<leader>ft", "<Cmd>TodoTelescope<CR>", { desc = "Find TODOs" })
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fr", "<Cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
map("n", "<leader>fs", "<Cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
map("n", "<leader>fc", "<Cmd>Telescope grep_string<CR>", { desc = "Find string under cursor" })
map("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Move to next buffer" })
map("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Move to previous buffer" })
map("n", "<leader>bd", "<Cmd>bdelete<CR>", { desc = "Delete buffer" })
map("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", { desc = "Delete buffers to the right" })
map("n", "<leader>bb", "<Cmd>e #<CR>", { desc = "Switch to other buffer" })

map("i", "jk", "<Esc>", options)

-- Vimtex comands reassigned
-- Change of math mode ds$ --> dsm, cs$ --> csm, ts$ --> tsm
map("n", "dsm", "<Plug>(vimtex-env-delete-math)", { noremap = false, silent = true })
map("n", "csm", "<Plug>(vimtex-env-change-math)", { noremap = false, silent = true })
map("n", "tsm", "<Plug>(vimtex-env-toggle-math)", { noremap = false, silent = true })
-- Change of environment ]m --> ]e, ]M --> ]E, [m-->[e, [M --> [E
map({ "n", "x", "o" }, "]e", "<Plug>(vimtex-]m)", { noremap = false, silent = true })
map({ "n", "x", "o" }, "]E", "<Plug>(vimtex-]M)", { noremap = false, silent = true })
map({ "n", "x", "o" }, "[e", "<Plug>(vimtex-[m)", { noremap = false, silent = true })
map({ "n", "x", "o" }, "[E", "<Plug>(vimtex-[M)", { noremap = false, silent = true })
-- Change of math mode ]n --> ]m, ]N --> ]M, [n-->[m, [N --> [M
map({ "n", "x", "o" }, "]m", "<Plug>(vimtex-]n)", { noremap = false, silent = true })
map({ "n", "x", "o" }, "]M", "<Plug>(vimtex-]N)", { noremap = false, silent = true })
map({ "n", "x", "o" }, "[m", "<Plug>(vimtex-[n)", { noremap = false, silent = true })
map({ "n", "x", "o" }, "[M", "<Plug>(vimtex-[N)", { noremap = false, silent = true })
-- Change of itemize/enumerate environment am --> ai, im --> ii
map({ "x", "o" }, "ai", "<Plug>(vimtex-am)", { noremap = false, silent = true })
map({ "x", "o" }, "ii", "<Plug>(vimtex-im)", { noremap = false, silent = true })
-- Change of math mode a$ --> am, i$ --> im
map({ "x", "o" }, "am", "<Plug>(vimtex-a$)", { noremap = false, silent = true })
map({ "x", "o" }, "im", "<Plug>(vimtex-i$)", { noremap = false, silent = true })
