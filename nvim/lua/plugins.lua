require("lazy").setup({
	{
		"navarasu/onedark.nvim",
		config = function()
			require "config.onedark"
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup ({
				filesystem = {
					filtered_items = {
						visible = true,
					},
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				icons_enabled = true,
				theme = 'onedark',
			})
		end,
	},
	{
    	'windwp/nvim-autopairs',
    	event = "InsertEnter",
    	config = true
	},
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require "config/telescope"
		end,
	},
	{
    	"hrsh7th/nvim-cmp",
    	dependencies = { "hrsh7th/cmp-buffer","saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-path", "hrsh7th/cmp-nvim-lsp" },
		config = function()
			require "config/cmp"
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require "config/luasnip"
		end,
	},
	{ "rafamadriz/friendly-snippets" },
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
        		"stylua",
        		"shellcheck",
        		"shfmt",
        		"flake8",
      		},
    	},
	},
    {
    	"neovim/nvim-lspconfig",
		config = function()
			require "config/lsp"
		end,
	},
	{
		"lervag/vimtex",
		config = function()
			require "config.vimtex"
		end,
	},
	{
		'akinsho/bufferline.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function ()
			require("bufferline").setup{}
		end,
	},
	{
    	"lukas-reineke/indent-blankline.nvim",
    	main = "ibl",
		config = function ()
			require("ibl").setup()
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require "config/dashboard"
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function ()
			require "config/todoComments"
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function ()
			require "config/treesitter"
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function ()
			require "config/treesitterContext"
		end,
	},
})

