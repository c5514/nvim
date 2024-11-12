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

