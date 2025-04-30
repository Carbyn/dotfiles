local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    sh = { "shfmt" },
    zsh = { "shfmt" },
    lua = { "stylua" },
    python = { "isort", "black" },
    markdown = { "mdformat" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
