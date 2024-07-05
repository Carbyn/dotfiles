-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onedark",
	transparency = true,

	tabufline = {
		order = { "treeOffset", "buffers", "tabs" },
	},

	nvdash = {
		load_on_startup = true,
	},
}

return M
