local map = vim.keymap.set
local todo_comments = require("todo-comments")
map("n","]t",function()
	todo_comments.jump_next()
end, {desc = "Next todo comment"})
map("n","[t",function()
	todo_comments.jump_prev()
end, {desc = "Previous todo comment"})
todo_comments.setup()
