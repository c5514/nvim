require("gitblame").setup {
	enabled                     = true,
	message_template            = "<summary> • <date> • <author>",
	highlight_group             = "Comment",
	delay                       = 200,
	date_format                 = "%r",
	display_virtual_text        = true,
	message_when_not_committed  = "Oh please, commit this",
	set_extmark_options         = {
		priority = 7,
	},
	use_blame_commite_file_urls = false,
	virtual_text_column         = 80,
}
