-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onedark",
	transparency = true,

	hl_override = {
		CursorLine = { bg = "statusline_bg" },
	},

	changed_themes = {
		onedark = {
			base_16 = {
				base00 = "#111111",
				base0E = "#A770EF",
				base0F = "#9796f0",
			},
		},
	},

	tabufline = {
		order = { "treeOffset", "buffers", "tabs" },
	},
}

return M
