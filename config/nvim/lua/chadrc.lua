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

	tabufline = {
		order = { "treeOffset", "buffers", "tabs" },
	},
}

return M
