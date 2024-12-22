require("lazy").setup({
  {
    "navarasu/onedark.nvim",
    config = function()
      require "plugins.onedark"
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
      require("neo-tree").setup({
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
      require("plugins.lualine")
      -- require("lualine").setup({
      -- 	icons_enabled = true,
      -- 	theme = 'onedark',
      -- })
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require("plugins/autopairs")
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "plugins/telescope"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "f3fora/cmp-spell"
    },
    config = function()
      require "plugins/cmp"
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require "plugins/luasnip"
    end,
  },
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
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "texlab",
        "pyright",
        -- "fortls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins/lsp"
    end,
  },
  {
    "lervag/vimtex",
    config = function()
      require "plugins/vimtex"
    end,
  },
  {
    "rpapallas/illustrate.nvim",
    config = function()
      require "plugins/illustrate"
    end,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {}
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
    end,
  },
  -- {
  -- 	"folke/which-key.nvim",
  -- 	event = "VeryLazy",
  -- },
  {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require "plugins/alpha"
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "plugins/todoComments"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "plugins/treesitter"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require "plugins/treesitterContext"
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- "rcarriga/nvim-notify",
    },
    config = function()
      require "plugins/noice"
    end
  },
  -- {
  -- 	"rcarriga/nvim-notify",
  -- 	config = function()
  -- 		require("notify").setup({
  -- 			background_colour = "#000000",
  -- 		})
  -- 	end
  -- },
  {
    "trunk-io/neovim-trunk",
    lazy = false,
    main = "trunk"
  },
  {
    "echasnovski/mini.nvim",
    version = '*',
    config = function()
      require "plugins/mini"
    end
  },
  {
    "OXY2DEV/markview.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "mrjones2014/smart-splits.nvim",
    config = function()
      require("plugins/splits")
    end
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("plugins/conform")
    end
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins/gitblame")
    end
  },
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>yy",
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        "<leader>yw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
      {
        '<leader>yr',
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    }
  }
})
