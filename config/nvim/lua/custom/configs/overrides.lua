local M = {}

M.telescope = {
  defaults = {
    prompt_prefix = "   ",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
