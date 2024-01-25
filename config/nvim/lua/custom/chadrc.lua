---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "onedark" },
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  changed_themes = {
    onedark = {
      polish_hl = {
        ["@constant"] = { fg = "#fda65f" },
      },
    },
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
