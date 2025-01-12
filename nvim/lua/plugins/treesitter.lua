require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "cpp",
    "html",
    "javascript",
    "markdown_inline",
    "markdown",
    -- "latex",-- comment to enable conceal in nvim tex
    "python",
    "lua",
    "vim",
    "nix"
  },
  highlight = {
    enable = true,
    -- uncomment the next line to allow conceal in nvim tex
    -- disable = { "latex" },
  },
  indent = {
    enable = true
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}

require 'treesitter-context'.setup {
  enable = true,
  throttle = true,
}
