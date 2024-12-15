require("conform").setup({
	format_on_save = {
		timeout_ms = 800,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		nix = { "nixfmt" },
		markdown = { "prettierd", "prettier" },
		tex = { "latexindent" },
	},
})
