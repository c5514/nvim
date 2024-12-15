require("mini.surround").setup({
	mappings = {
		add = "gsa",
		delete = "gsd",
		find = "gsf",
		find_left = "gsF",
		highlight = "gsh",
		replace = "gsr",
		update_n_lines = "gsn",
	},
})
require("mini.notify").setup()
require("mini.comment").setup()
require("mini.indentscope").setup()
require("mini.cursorword").setup()
require("mini.align").setup()
require("mini.bracketed").setup()
require("mini.clue").setup({
	window = {
		delay = 100,
	},
	triggers = {
		{ mode = 'n', keys = '<Leader>' },
		{ mode = 'x', keys = '<Leader>' },
	}
})
require("mini.hipatterns").setup()
require("mini.icons").setup()
