---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  changed_themes = {
    onedark = {
      polish_hl = {
        ["@constant"] = { fg = "#fda65f" },
      },
    },
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = true,
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
