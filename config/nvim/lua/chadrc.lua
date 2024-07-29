-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
	transparency = true,

	hl_override = {
		CursorLine = { bg = "statusline_bg" },
	},
}

M.ui = {
	tabufline = {
		order = { "treeOffset", "buffers", "tabs" },
	},
}

return M
