-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	transparency = false,
	theme = "nimbus",
	-- theme = "onedark",
	changed_themes = {
		onedark = {
			base_16 = {
				base00 = "#1b1d23",
			},
		},
	},
}

M.ui = {
	tabufline = {
		order = { "treeOffset", "buffers", "tabs" },
	},
}

return M
